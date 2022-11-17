import 'package:demo/pages/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

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
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors
              .green), // here brightness is dark so the color will be in black shade to remove that remove brightness
      initialRoute: "/home",
      routes: {
        "/": (context) =>
            LoginPage(), // For this to run we need to remove home:HomePage() because that is pointing to home page and this "/" also points to home page so to work properly we need to remove one of them
        "/home": (context) => HomePage(),
        " /login": (context) => LoginPage()
      },
    );
  }
}
