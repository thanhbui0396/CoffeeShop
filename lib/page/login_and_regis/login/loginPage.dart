import 'package:coffee_shop/page/login_and_regis/regis/regisPage.dart';
import 'package:coffee_shop/providers/auth_provider.dart';
import 'package:coffee_shop/units/app_image.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  static const routerName = '/loginPage';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode myFocusNode = FocusNode();
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
        toolbarHeight: 130.h - MediaQuery.of(context).padding.top,
        elevation: 0,
        title: const Text(
          'Login',
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
            padding:
                const EdgeInsets.only(left: 25, top: 35, right: 25, bottom: 20)
                    .r,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: SingleChildScrollView(
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
                  Column(
                    children: [
                      SizedBox(
                        height: 50.h,
                        child: TextField(
                          focusNode: myFocusNode,
                          controller: _emailController,
                        
                          cursorColor: AppColors.mainColor,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                              color: myFocusNode.hasFocus
                                  ? AppColors.mainColor
                                  : const Color(0xFF9D9D9D),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.r)),
                              borderSide:
                                  const BorderSide(color: AppColors.mainColor),
                            ),
                            hoverColor: AppColors.mainColor,
                            labelText: 'Email & Phone',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.r),
                              ),
                            ),
                            prefixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: SvgPicture.asset(
                                AppImage.iconAccount,
                                color: AppColors.textAndButtonColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SizedBox(
                        height: 50.h,
                        child: TextField(
                          // focusNode: FocusNode(),
                          controller: _passwordController,
                          obscureText: _obscured,
                          cursorColor: AppColors.mainColor,
                          decoration: InputDecoration(
                            // labelStyle: const TextStyle(
                            //   decorationColor: Colors.amber,
                            // ),
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
                            prefixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: SvgPicture.asset(
                                AppImage.iconPassword,
                                color: AppColors.textAndButtonColor,
                              ),
                            ),
                            suffixIcon: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween, // added line
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  child: Text(
                                    'Forgot?',
                                    style: TextStyle(
                                        color: AppColors.mainColor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: _toggleObscured,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.r),
                                    child: SvgPicture.asset(
                                      _obscured
                                          ? AppImage.iconEye
                                          : AppImage.iconEyeSlash,
                                      fit: BoxFit.cover,
                                      color: const Color(0xFF9D9D9D),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            suffixIconColor: AppColors.mainColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Container(
                        height: 50.h,
                        width: 50.h,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color:
                                AppColors.textAndButtonColor.withOpacity(0.54),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: const Offset(0, 4),
                          ),
                        ], shape: BoxShape.circle),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: handleLogin,
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shadowColor: AppColors.mainColor,
                              padding: const EdgeInsets.all(5),
                              shape: const CircleBorder(),
                              backgroundColor: AppColors
                                  .textAndButtonColor, // <-- Button color
                              foregroundColor:
                                  AppColors.mainColor, // <-- Splash color
                            ),
                            child: Center(
                              child: SvgPicture.asset(AppImage.iconRight),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Column(
                    children: [
                      Text(
                        'Dont have an account ?',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w400),
                      ),
                      Material(
                        color: Colors.white,
                        child: SizedBox(
                          width: 90.r,
                          child: InkWell(
                            focusColor: AppColors.voucherColor,
                            highlightColor: AppColors.voucherColor,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RegisPage.routerName);
                            },
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Register ',
                                    style: TextStyle(
                                        color: AppColors.mainColor,
                                        fontSize: 14.sp),
                                  ),
                                  SvgPicture.asset(
                                    AppImage.iconChevronright,
                                    color: AppColors.mainColor,
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 42.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 47.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.r),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xFF000000).withOpacity(0.15),
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: const Offset(1, 3),
                              ),
                            ]),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            foregroundColor: AppColors.voucherColor,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.r),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(AppImage.iconFacebook),
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
                              SvgPicture.asset(AppImage.iconBiArrowRight),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Container(
                        height: 47.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.r),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xFF000000).withOpacity(0.15),
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: const Offset(1, 3),
                              ),
                            ]),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            foregroundColor: AppColors.voucherColor,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.r),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(AppImage.iconGoogle),
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
                              SvgPicture.asset(AppImage.iconBiArrowRight),
                            ],
                          ),
                        ),
                      ),
                    ],
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
