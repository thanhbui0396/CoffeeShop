import 'package:coffee_shop/page/home/home_main.dart';
import 'package:coffee_shop/page/login_and_regis/login/loginPage.dart';
import 'package:coffee_shop/page/login_and_regis/regis/regisPage.dart';
import 'package:coffee_shop/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeMain.routerName,
      routes: {
        HomeMain.routerName: (context) => const HomeMain(),
        LoginPage.routerName: (context) => const LoginPage(),
        RegisPage.routerName: (context) => const RegisPage(),
      },
    ),
  ));
}
