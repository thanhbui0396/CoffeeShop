import 'package:coffee_shop/card/combo_card.dart';
import 'package:coffee_shop/card/hot_deals_products.dart';
import 'package:coffee_shop/card/new_products_card.dart';
import 'package:coffee_shop/card/voucher_card.dart';
import 'package:coffee_shop/page/home/home_page/widget/home_slider.dart';
import 'package:coffee_shop/providers/auth_provider.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        clipBehavior: Clip.hardEdge,
        width: double.infinity,
        surfaceTintColor: AppColors.voucherColor,
        shadowColor: AppColors.voucherColor,
        // width: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Container(
                    height: 200.h,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(78.r))),
                    child: Center(
                      child: ListTile(
                        leading: SizedBox(
                          height: 70.h,
                          width: 70.h,
                          child: const CircleAvatar(),
                        ),
                        title: Text(
                          'Thanh Bui',
                          style: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icon/new.png',
                              width: 16.h,
                              height: 16.h,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3.h,
                            ),
                            Text(
                              'New',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          const Divider(
                            color: Color(0xFFDADADA),
                            height: 2,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.home_outlined,
                              size: 26.h,
                              color: Colors.black,
                            ),
                            title: Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onTap: () {
                              // Navigator.pushNamed(context, HomePage.routerName);
                            },
                          ),
                          ListTile(
                            leading: Image.asset(
                              'assets/icon/trans_history.png',
                              width: 30.h,
                              height: 30.h,
                              color: Colors.black,
                            ),
                            title: Text(
                              'Transaction history',
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                              leading: Image.asset(
                                'assets/icon/my_account.png',
                                width: 30.h,
                                height: 30.h,
                                color: Colors.black,
                              ),
                              title: Text(
                                'My account',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onTap: () {}),
                          ListTile(
                              leading: Image.asset(
                                'assets/icon/your_favorite.png',
                                width: 30.h,
                                height: 30.h,
                                color: Colors.black,
                              ),
                              title: Text(
                                'Your favorite',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onTap: () {}),
                          SizedBox(
                            height: 10.h,
                          ),
                          const Divider(
                            color: Color(0xFFDADADA),
                            height: 2,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ListTile(
                              leading: Icon(
                                Icons.settings_outlined,
                                size: 26.h,
                                color: Colors.black,
                              ),
                              title: Text(
                                'Setting',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onTap: () {}),
                          ListTile(
                              leading: Image.asset(
                                'assets/icon/contact_us.png',
                                width: 30.h,
                                height: 30.h,
                                color: Colors.black,
                              ),
                              title: Text(
                                'Contact us',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onTap: () {}),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20.h,
              bottom: 20.h,
              child: TextButton(
                style:
                    TextButton.styleFrom(foregroundColor: AppColors.mainColor),
                child: Row(
                  children: [
                    Text(
                      'Log out',
                      style: TextStyle(fontSize: 18.sp, color: Colors.black),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Icon(
                      Icons.logout,
                      size: 22.h,
                      color: Colors.black,
                    )
                  ],
                ),
                onPressed: () {
                  Provider.of<AuthProvider>(context, listen: false).logout();
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 150.h,
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        leading: Builder(
          builder: (context) => Padding(
            padding: EdgeInsets.only(left: 10.r, bottom: 85.r),
            child: IconButton(
              // iconSize: 25.h,
              icon: Image.asset(
                'assets/icon/drawer.png',
                width: 35.h,
                height: 35.h,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(bottom: 85.r),
            child: Ink(
              decoration: const ShapeDecoration(
                color: AppColors.buttonColor2,
                shape: CircleBorder(),
              ),
              child: IconButton(
                iconSize: 25.h,
                icon: const Icon(Icons.notifications_none_rounded),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          )
        ],
        flexibleSpace: Container(
          padding: const EdgeInsets.only(left: 25, top: 130).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcom to,',
                style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'KOFEHOLIC',
                style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
      body: Stack(children: [
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
            clipBehavior: Clip.none,
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: Column(
              children: [
                const HomeSlider(),
                SizedBox(
                  height: 30.h,
                ),
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
                        padding: EdgeInsets.all(9.r),
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
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.w,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return const NewProductsCard();
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Hot ',
                            style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor,
                                decoration: TextDecoration.underline),
                          ),
                          TextSpan(
                            text: 'deals ',
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
                        padding: EdgeInsets.all(9.r),
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
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.w,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return const HotDealsProducts();
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
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
                                decoration: TextDecoration.underline),
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
                        padding: EdgeInsets.all(9.w),
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
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Your',
                            style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor,
                                decoration: TextDecoration.underline),
                          ),
                          TextSpan(
                            text: ' Voucher',
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
                        padding: EdgeInsets.all(9.r),
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
                  height: 3.h,
                ),
                ListView.separated(
                  clipBehavior: Clip.none,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return const VoucherCard();
                  },
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
