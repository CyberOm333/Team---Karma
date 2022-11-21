import 'package:demo/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Column(children: [
      Image.asset("assests/images/Login2.png", fit: BoxFit.cover),
      SizedBox(
        height: 20,
      ),
      Text("Welcome",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )),
      SizedBox(
        height: 20,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                labelText: "Username",
                hintText: "Enter username",
              )),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  )),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(140, 50)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  }),
            ],
          ))
    ])));
  }
}
