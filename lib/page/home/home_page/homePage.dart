import 'package:coffee_shop/page/home/home_page/widget/combo_body.dart';
import 'package:coffee_shop/page/home/home_page/widget/home_slider.dart';
import 'package:coffee_shop/page/home/home_page/widget/hot_deal_products_body.dart';
import 'package:coffee_shop/page/home/home_page/widget/new_products_body.dart';
import 'package:coffee_shop/page/home/home_page/widget/voucher_body.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: AppColors.mainColor),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 30).r,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: SingleChildScrollView(
              clipBehavior: Clip.hardEdge,
              padding: EdgeInsets.symmetric(horizontal: 20.r),
              child: Column(
                children: [
                  const HomeSlider(),
                  SizedBox(
                    height: 30.h,
                  ),
                  const NewProducstBody(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const HotDealsProductsBody(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ComboBody(),
                  SizedBox(
                    height: 30.h,
                  ),
                  const VoucherBody()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
