import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoucherCard extends StatelessWidget {
  const VoucherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.center,
      alignment: Alignment.centerLeft,
      children: [
        Container(
          height: 104.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.voucherColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.25),
                spreadRadius: -3,
                blurRadius: 4,
                offset: const Offset(4, 0), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 104.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 10).r,
                      width: 80.h,
                      height: 20.h,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.all(
                          const Radius.circular(3).r,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'DELIVERY',
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(bottom: 10.r),
                      height: 38.h,
                      child: Center(
                          child: Text(
                        '\$5',
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.mainColor),
                      )),
                    ))
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40.h,
                      width: 183.h,
                      margin: const EdgeInsets.only(left: 20, top: 10).r,
                      child: Text(
                        '\$5minimum discount for order over \$10 -----------',
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 10, bottom: 5)
                              .r,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'expired: 10/1/2021',
                            style: TextStyle(
                                color: AppColors.buttonColor2,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(bottom: 5.r),
                                height: 30.h,
                                width: 85.h,
                                decoration: BoxDecoration(
                                  color: AppColors.buttonColor2,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6.r),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Apply now',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 100.r),
          height: 114.h,
          width: 10.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10.h,
                height: 10.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(5).r,
                      bottomRight: const Radius.circular(5).r,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.r),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          direction: Axis.vertical,
                          children: List.generate(
                              (constraints.constrainHeight() / 9).floor(),
                              (index) => SizedBox(
                                    width: 6.h,
                                    height: 6.h,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 0,
                                              blurRadius: 1,
                                              offset: const Offset(0, 1),
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    ),
                                  )));
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 10.h,
                height: 10.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.r),
                      topRight: Radius.circular(5.r),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
