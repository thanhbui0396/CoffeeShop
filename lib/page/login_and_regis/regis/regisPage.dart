import 'package:coffee_shop/models/data_regis.dart';
import 'package:coffee_shop/page/login_and_regis/otp/otp_page.dart';
import 'package:coffee_shop/providers/auth_provider.dart';
import 'package:coffee_shop/units/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class RegisPage extends StatefulWidget {
  static const routerName = '/regisPage';
  const RegisPage({Key? key}) : super(key: key);

  @override
  State<RegisPage> createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  final TextEditingController _firstnameController = TextEditingController();

  final TextEditingController _lastnameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _obscured = true;
  bool _obscuredConfirm = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured; // Prevents focus if tap on eye
    });
  }

  void _toggleObscuredConfirm() {
    setState(() {
      _obscuredConfirm = !_obscuredConfirm; // Prevents focus if tap on eye
    });
  }

  void handleRegis() {
    final email = _emailController.text;
    final name = '${_firstnameController.text} ${_lastnameController.text}';
    final password = _passwordController.text;
    final rePassword = _confirmPasswordController.text;
    const group_id = '64b8be54b8426f15351e5837';
    const id_app = '648deb5c4992aaaa9b8a165d';
    if (email.isNotEmpty && password.isNotEmpty && password == rePassword) {
      DataRegis dataRegis = DataRegis(
        email: email,
        name: name,
        password: password,
        rePassword: rePassword,
        group_id: group_id,
        id_app: id_app,
      );

      Provider.of<AuthProvider>(context, listen: false).register(dataRegis);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Register',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        leading: BackButton(
          color: Colors.white,
          style: const ButtonStyle(iconSize: MaterialStatePropertyAll(30)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 35).r,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Great to see you here!',
                    style: TextStyle(
                        color: AppColors.textAndButtonColor,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.r),
                    child: Text(
                      'Let\'t set up your account in just a couple of steps.',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 120.h,
                                height: 50.h,
                                child: TextField(
                                  controller: _firstnameController,
                                  cursorColor: Colors.amber,
                                  decoration: InputDecoration(
                                    // contentPadding:
                                    //     EdgeInsets.symmetric(horizontal: 10.r),
                                    labelStyle: const TextStyle(
                                        color: AppColors.mainColor),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50.r)),
                                        borderSide: const BorderSide(
                                            color: AppColors.mainColor)),
                                    hoverColor: AppColors.mainColor,
                                    labelText: 'Firstname',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50.r))),
                                  ),
                                )),
                            SizedBox(
                              width: 15.h,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 50.h,
                                child: TextField(
                                  controller: _lastnameController,
                                  cursorColor: Colors.amber,
                                  decoration: InputDecoration(
                                    labelStyle: const TextStyle(
                                        color: AppColors.mainColor),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50.r)),
                                        borderSide: const BorderSide(
                                            color: AppColors.mainColor)),
                                    hoverColor: AppColors.mainColor,
                                    labelText: 'Lastname',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50.r))),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 14.h,
                      ),
                      SizedBox(
                        height: 50.h,
                        child: TextField(
                          controller: _emailController,
                          cursorColor: Colors.amber,
                          decoration: InputDecoration(
                            labelStyle:
                                const TextStyle(color: AppColors.mainColor),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.r)),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor)),
                            hoverColor: AppColors.mainColor,
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.r))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      SizedBox(
                        height: 50.h,
                        child: TextField(
                          controller: _phoneController,
                          cursorColor: Colors.amber,
                          decoration: InputDecoration(
                            labelStyle:
                                const TextStyle(color: AppColors.mainColor),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.r)),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor)),
                            hoverColor: AppColors.mainColor,
                            labelText: 'Phone number',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.r))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      SizedBox(
                        height: 50.h,
                        child: TextField(
                          obscureText: _obscured,
                          controller: _passwordController,
                          cursorColor: Colors.amber,
                          decoration: InputDecoration(
                            labelStyle:
                                const TextStyle(color: AppColors.mainColor),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.r)),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor)),
                            hoverColor: AppColors.mainColor,
                            labelText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.r))),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: GestureDetector(
                                onTap: _toggleObscured,
                                child: Image.asset(
                                  'assets/icon/hide_pw.png',
                                  color: !_obscured
                                      ? AppColors.mainColor
                                      : const Color(0xFF9D9D9D),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      SizedBox(
                        height: 50.h,
                        child: TextField(
                          obscureText: _obscuredConfirm,
                          controller: _confirmPasswordController,
                          cursorColor: Colors.amber,
                          decoration: InputDecoration(
                            labelStyle:
                                const TextStyle(color: AppColors.mainColor),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.r)),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor)),
                            hoverColor: AppColors.mainColor,
                            labelText: 'Confirm password',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.r))),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: GestureDetector(
                                onTap: _toggleObscuredConfirm,
                                child: Image.asset(
                                  'assets/icon/hide_pw.png',
                                  color: !_obscuredConfirm
                                      ? AppColors.mainColor
                                      : const Color(0xFF9D9D9D),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 30.sp, fontWeight: FontWeight.w400),
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
                          onPressed: () {
                            Navigator.pushNamed(context, OtpPage.routerName);
                          },
                          // onPressed: handleRegis,
                          icon: Image.asset('assets/icon/right.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Text(
                    'Do you have an account?',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign in ',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
