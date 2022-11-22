import 'package:demo/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      changeButton = false;
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Form(
      key: _formKey,
      child: Column(children: [
        Image.asset("assests/images/Login_Page_3.png", fit: BoxFit.cover),
        SizedBox(
          height: 20,
        ),
        Text("Welcome $name",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter username",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    } else if (value.length < 6) {
                      return "Password Length should be atleast 6";
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : (8)),
                  child: InkWell(
                    // splashColor: Colors.red,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 70 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),

                      // -- Remove this because material widget already exists
                      // decoration: BoxDecoration(
                      //   color: Colors.deepPurple,
                      //   // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,

                      // ),
                    ),

                    // ElevatedButton(
                    //     child: Text("Login"),
                    //     style: TextButton.styleFrom(minimumSize: Size(140, 50)),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     }),
                  ),
                )
              ],
            ))
      ]),
    )));
  }
}
