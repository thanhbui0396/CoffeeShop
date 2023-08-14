import 'package:coffee_shop/app/themes/my_theme.dart';
import 'package:coffee_shop/page/home/home_main.dart';
import 'package:coffee_shop/page/login_and_regis/login/loginPage.dart';
import 'package:coffee_shop/page/login_and_regis/otp/otp_page.dart';
import 'package:coffee_shop/page/login_and_regis/regis/regisPage.dart';
import 'package:coffee_shop/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        // minTextAdapt: true,
        // splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: MyTheme.lightTheme,
            initialRoute: HomeMain.routerName,
            routes: {
              HomeMain.routerName: (context) => const HomeMain(),
              LoginPage.routerName: (context) => const LoginPage(),
              RegisPage.routerName: (context) => const RegisPage(),
              OtpPage.routerName: (context) => const OtpPage(),
            },
          );
        },
      ),
    ),
  );
}
