import 'package:coffee_shop/page/home/add_page/add_page.dart';
import 'package:coffee_shop/page/home/cart_page/cart_page.dart';
import 'package:coffee_shop/page/home/home_page/homePage.dart';
import 'package:coffee_shop/page/home/products_page/products_page.dart';
import 'package:coffee_shop/page/home/voucher_page/voucher_page.dart';
import 'package:coffee_shop/page/login_and_regis/login/loginPage.dart';
import 'package:coffee_shop/providers/auth_provider.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeMain extends StatelessWidget {
  static const routerName = '/homeMain';
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, auth, child) {
      return auth.isAuth ? const Home() : const LoginPage();
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
