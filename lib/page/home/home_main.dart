import 'package:coffee_shop/page/home/add_page/add_page.dart';
import 'package:coffee_shop/page/home/cart_page/cart_page.dart';
import 'package:coffee_shop/page/home/home_page/homePage.dart';
import 'package:coffee_shop/page/home/products_page/products_page.dart';
import 'package:coffee_shop/page/home/voucher_page/voucher_page.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
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
        body: widgetOptions[selectedIndex],
        bottomNavigationBar: ConvexAppBar(
          items: const [
            TabItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            TabItem(
              icon: Icon(
                Icons.airplane_ticket_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            TabItem(
              icon: Icon(Icons.coffee_outlined, color: Colors.white, size: 30),
            ),
            TabItem(
              icon: Icon(Icons.shopping_cart_outlined,
                  color: Colors.white, size: 30),
            ),
            TabItem(
              icon: Icon(Icons.add_outlined, color: Colors.white, size: 30),
            ),
          ],
          backgroundColor: AppColors.buttonColor2,
          activeColor: AppColors.mainColor,
          onTap: _onItemTapped,
        ));
  }
}
