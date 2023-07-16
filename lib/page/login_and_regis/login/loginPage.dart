import 'package:coffee_shop/units/colors.dart';
import 'package:coffee_shop/units/dimensions.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: Dimensions.font30),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20, vertical: Dimensions.height30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Let\'s sign you in',
                  style: TextStyle(
                      color: AppColors.textAndButtonColor,
                      fontSize: Dimensions.font24,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Text(
                  'Welcom back, you have been mised.',
                  style: TextStyle(
                    fontSize: Dimensions.font16,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height40,
                ),
                TextField(
                  controller: _emailController,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: AppColors.mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.radius40)),
                        borderSide:
                            const BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Email & Phone',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.radius40))),
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
                  height: Dimensions.height20,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: _obscured,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: AppColors.mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.radius40)),
                        borderSide:
                            const BorderSide(color: AppColors.mainColor)),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.radius40))),
                    prefixIcon: const Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.lock_outline,
                        color: AppColors.textAndButtonColor,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: _toggleObscured,
                        child: Icon(
                          _obscured
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          size: Dimensions.iconSize20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                            fontSize: Dimensions.font16,
                            color: AppColors.mainColor),
                      ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          height: Dimensions.height40,
                          width: Dimensions.width100,
                          decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(Dimensions.radius20))),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Dimensions.font16),
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Text(
                  'Dont have an account ?',
                  style: TextStyle(fontSize: Dimensions.font16),
                ),
                SizedBox(
                  height: Dimensions.height5,
                ),
                InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: Dimensions.width100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Register',
                              style: TextStyle(
                                  color: AppColors.mainColor,
                                  fontSize: Dimensions.font16),
                            ),
                            SizedBox(
                              width: Dimensions.width5,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: AppColors.mainColor,
                              size: Dimensions.iconSize20,
                            )
                          ]),
                    )),
                SizedBox(
                  height: Dimensions.height30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.mainColor,
                      shadowColor: Colors.black38,
                      elevation: 5),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.facebook,
                            size: Dimensions.iconSize30,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: Dimensions.width15,
                          ),
                          Text(
                            'Login with facebook',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Dimensions.font16),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.mainColor,
                      shadowColor: Colors.black38,
                      elevation: 5),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/image/logo_google.png',
                              fit: BoxFit.fitWidth,
                              height: Dimensions.height25,
                              width: Dimensions.width25,
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width15,
                          ),
                          Text(
                            'Login with Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Dimensions.font16),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
