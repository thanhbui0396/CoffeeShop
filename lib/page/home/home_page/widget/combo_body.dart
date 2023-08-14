import 'package:coffee_shop/card/combo_card.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComboBody extends StatelessWidget {
  const ComboBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Com',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainColor,
                      decoration: TextDecoration.underline,
                      // decorationThickness: 2.r,
                    ),
                  ),
                  TextSpan(
                    text: 'bo',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: AppColors.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.r),
                  ),
                ),
              ),
              child: Text(
                'See all',
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 10.w,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return const ComboCard();
            },
          ),
        ),
      ],
    );
  }
}
