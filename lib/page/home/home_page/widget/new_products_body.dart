import 'package:coffee_shop/card/product.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewProducstBody extends StatelessWidget {
  const NewProducstBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'New',
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainColor,
                  decoration: TextDecoration.underline),
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
          height: 30.h,
        ),
        SizedBox(
          height: 210.h,
          child: ListView.separated(
            shrinkWrap: true,
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 10.w,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Product(
                isDeal: false,
              );
            },
          ),
        ),
      ],
    );
  }
}
