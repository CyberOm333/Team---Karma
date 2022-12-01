import 'package:demo/pages/cart_page.dart';
import 'package:demo/pages/login_page.dart';
import 'package:demo/utils/routes.dart';
import 'package:demo/widgets/themes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode
          .light, // Change this light to dark for changing the theme to dark from light
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(
          context), // here brightness is dark so the color will be in black shade to remove that remove brightness
      // initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) =>
            LoginPage(), // For this to run we need to remove home:HomePage() because that is pointing to home page and this "/" also points to home page so to work properly we need to remove one of them
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
