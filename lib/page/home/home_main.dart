import 'package:coffee_shop/page/home/add_page/add_page.dart';
import 'package:coffee_shop/page/home/cart_page/cart_page.dart';
import 'package:coffee_shop/page/home/home_page/homePage.dart';
import 'package:coffee_shop/page/home/products_page/products_page.dart';
import 'package:coffee_shop/page/home/voucher_page/voucher_page.dart';
import 'package:coffee_shop/page/login_and_regis/login/loginPage.dart';
import 'package:coffee_shop/providers/auth_provider.dart';
import 'package:coffee_shop/units/app_image.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeMain extends StatelessWidget {
  static const routerName = '/homeMain';
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, auth, child) {
      return auth.isAuth
          ? const Home()
          : FutureBuilder(
              future: auth.autoLogin(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                return snapshot.data ? const Home() : const LoginPage();
              },
            );
    });
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    HomePage(),
    VoucherPage(),
    ProductsPage(),
    CartPage(),
    AddPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
                            SvgPicture.asset(AppImage.iconNewDrawer),
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
                            leading: SvgPicture.asset(
                              AppImage.iconHome,
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
                            leading:
                                SvgPicture.asset(AppImage.iconTransactionHis),
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
                              leading: SvgPicture.asset(AppImage.iconMyAccount),
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
                              leading: SvgPicture.asset(AppImage.iconYourFav),
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
                              leading: SvgPicture.asset(AppImage.iconSettings),
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
                              leading: SvgPicture.asset(AppImage.iconContactUs),
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
          builder: (context) => IconButton(
            icon: SvgPicture.asset(
              AppImage.iconMenuDrawer,
              fit: BoxFit.cover,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          Container(
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              left: 25.r,
              bottom: 14.r,
              right: ScreenUtil.defaultSize.width * 0.2,
            ).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
      ),
      body: widgetOptions[selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(
            icon: SvgPicture.asset(
              AppImage.iconHome,
            ),
            activeIcon: Center(
              child: SvgPicture.asset(
                AppImage.iconHome,
              ),
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              AppImage.iconVoucher,
            ),
            activeIcon: Center(
              child: SvgPicture.asset(
                AppImage.iconVoucher,
              ),
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              AppImage.iconproduct,
            ),
            activeIcon: Center(
              child: SvgPicture.asset(
                AppImage.iconproduct,
              ),
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              AppImage.iconcart,
            ),
            activeIcon: Center(
              child: SvgPicture.asset(
                AppImage.iconcart,
              ),
            ),
          ),
          TabItem(
            icon: SvgPicture.asset(
              AppImage.iconMore,
            ),
            activeIcon: Center(
              child: SvgPicture.asset(
                AppImage.iconMore,
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.buttonColor2,
        activeColor: AppColors.mainColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
