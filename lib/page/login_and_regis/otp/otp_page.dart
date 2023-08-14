import 'dart:async';

import 'package:coffee_shop/units/app_image.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatefulWidget {
  static const routerName = '/otpPage';
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  int start = 10;
  bool wait = true;
  String textOtp = 'Send OTP again in';
  String currentText = '';

  void startTimer() {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
          wait = false;
          textOtp = 'Dont receive SMS ?';
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130.h - MediaQuery.of(context).padding.top,
        elevation: 0,
        title: const Text(
          'Otp',
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
              padding: const EdgeInsets.only(left: 22, right: 22, top: 35).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Please enter 4 digits code form the SMS sent to your phone',
                    style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textAndButtonColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 110.h,
                  ),
                  PinCodeTextField(
                      appContext: context,
                      length: 4,
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(10),
                        fieldHeight: 64,
                        fieldWidth: 64,
                        selectedColor: AppColors.mainColor,
                        inactiveColor: Colors.grey,
                      ),
                      onChanged: (value) {
                        setState(() {
                          currentText = value;
                          print(currentText);
                        });
                      }),
                  SizedBox(
                    height: 70.h,
                  ),
                  Text(
                    textOtp,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  wait
                      ? RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '00:$start ',
                                style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              TextSpan(
                                text: 'sec',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            startTimer();
                            setState(() {
                              textOtp = 'Send OTP again in';
                              wait = true;
                              start = 10;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Resent ',
                                style: TextStyle(
                                    color: AppColors.mainColor, fontSize: 14),
                              ),
                              SvgPicture.asset(AppImage.iconChevronright)
                            ],
                          ),
                        ),
                  SizedBox(
                    height: 70.h,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity - 44,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.textAndButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.r),
                          ),
                        ),
                      ),
                      child: Text(
                        'Verify',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
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
