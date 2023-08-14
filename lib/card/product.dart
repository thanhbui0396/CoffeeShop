import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatelessWidget {
  Product({Key? key, required this.isDeal}) : super(key: key);
  bool isDeal;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.r,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 130.h,
                width: 130.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/image/image_product/capochino.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              isDeal
                  ? Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.r, vertical: 2.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        color: const Color(0xFFED4C5C),
                      ),
                      child: Text(
                        '-20%',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    )
                  : Container(),
              Positioned(
                right: 5.h,
                top: 5.h,
                child: Material(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                  clipBehavior: Clip.none,
                  child: InkWell(
                    onTap: () {},
                    child: Ink(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.buttonColor2),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20.r,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 10.r, right: 10.r, bottom: 10.r, top: 5.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Capuchino',
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'price: ',
                        style: TextStyle(
                            color: const Color(0xFF9D9D9D), fontSize: 10.sp),
                      ),
                      Text(
                        '\$100',
                        style: TextStyle(
                            color: AppColors.mainColor, fontSize: 11.sp),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite,
                          size: 13.h,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        size: 13.h,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w500),
                      )
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
