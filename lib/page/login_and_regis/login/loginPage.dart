import 'package:coffee_shop/page/login_and_regis/regis/regisPage.dart';
import 'package:coffee_shop/providers/auth_provider.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  static const routerName = '/loginPage';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      // Prevents focus if tap on eye
    });
  }

  void handleLogin() {
    final String username = _emailController.text;
    final String password = _passwordController.text;
    if (username.isNotEmpty && password.isNotEmpty) {
      Provider.of<AuthProvider>(context, listen: false)
          .login(username, password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Login',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.sp,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: AppColors.mainColor),
          ),
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 35).r,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Let\'s sign you in',
                    style: TextStyle(
                        color: AppColors.textAndButtonColor,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Welcom back, you have been mised.',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  TextField(
                    controller: _emailController,
                    cursorColor: AppColors.mainColor,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: AppColors.mainColor),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.r)),
                          borderSide:
                              const BorderSide(color: AppColors.mainColor)),
                      hoverColor: AppColors.mainColor,
                      labelText: 'Email & Phone',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.r))),
                      prefixIcon: const Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: AppColors.textAndButtonColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: _obscured,
                    cursorColor: AppColors.mainColor,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: AppColors.mainColor),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.r),
                        ),
                        borderSide:
                            const BorderSide(color: AppColors.mainColor),
                      ),
                      hoverColor: AppColors.mainColor,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.r),
                        ),
                      ),
                      prefixIcon: const Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.lock_outline,
                          color: AppColors.textAndButtonColor,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: _toggleObscured,
                        child: Image.asset(
                          'assets/icon/hide_pw.png',
                          color: !_obscured
                              ? AppColors.mainColor
                              : const Color(0xFF9D9D9D),
                        ),
                      ),
                      suffixIconColor: AppColors.mainColor,
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Forgot Password ?',
                          style: TextStyle(
                              fontSize: 16, color: AppColors.mainColor),
                        ),
                      ),
                      Container(
                        height: 50.h,
                        width: 50.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.textAndButtonColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.textAndButtonColor
                                    .withOpacity(0.54),
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: const Offset(0, 4),
                              ),
                            ]),
                        child: IconButton(
                          onPressed: handleLogin,
                          icon: Image.asset('assets/icon/right.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    'Dont have an account ?',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisPage.routerName);
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Register ',
                            style: TextStyle(
                                color: AppColors.mainColor, fontSize: 14.sp),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/icon/right.png',
                            color: AppColors.mainColor,
                            height: 14.h,
                            width: 14.h,
                          ),
                        ]),
                  ),

                  SizedBox(
                    height: 42.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 47.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.15),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: const Offset(1, 3),
                          ),
                        ]),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.mainColor,
                        shadowColor: Colors.black38,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.facebook,
                            size: 30,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 20.h,
                          ),
                          Expanded(
                            child: Text(
                              'Login with facebook',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 47.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.15),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: const Offset(1, 3),
                          ),
                        ]),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.mainColor,
                        shadowColor: Colors.black38,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/icon/google.png'),
                          SizedBox(
                            width: 20.h,
                          ),
                          Expanded(
                            child: Text(
                              'Login with google',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
