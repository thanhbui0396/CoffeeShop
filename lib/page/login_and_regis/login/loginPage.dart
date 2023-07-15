import 'package:coffee_shop/units/colors.dart';
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
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Let\'s sign you in',
                  style: TextStyle(
                      color: AppColors.textAndButtonColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Welcom back, you have been mised.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: _emailController,
                  cursorColor: Colors.amber,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: AppColors.mainColor),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: AppColors.mainColor)),
                    hoverColor: AppColors.mainColor,
                    labelText: 'Email & Phone',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: AppColors.textAndButtonColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: _obscured,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: AppColors.mainColor),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: AppColors.mainColor)),
                    labelText: 'Password',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
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
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password ?',
                        style:
                            TextStyle(fontSize: 14, color: AppColors.mainColor),
                      ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: const BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Center(
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Dont have an account ?',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                    onTap: () {},
                    child: const SizedBox(
                      width: 100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Register',
                              style: TextStyle(
                                  color: AppColors.mainColor, fontSize: 16),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: AppColors.mainColor,
                              size: 20,
                            )
                          ]),
                    )),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.mainColor,
                      shadowColor: Colors.black38,
                      elevation: 5),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.facebook,
                            size: 30,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Login with facebook',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                              height: 25,
                              width: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Login with Google',
                            style: TextStyle(color: Colors.black, fontSize: 16),
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
