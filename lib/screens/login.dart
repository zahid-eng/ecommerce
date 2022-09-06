import 'package:flutter/material.dart';
import 'package:my_project/utils/styles.dart';
import 'package:my_project/widgets/EcoTextfield.dart';
import 'package:my_project/widgets/Ecobutton.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        // ignore: prefer_const_literals_to_create_immutables
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Welcome\n Please Login First",
                    style: Appstyle.boldStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                EcotextField(
                  text: "Enter Email",
                  icon: Icon(Icons.mail),
                ),
                EcotextField(
                  text: "Enter Password",
                  isPassword: true,
                ),
                SizedBox(
                  height: 50,
                ),
                EcoButton(
                  loginText: "Login",
                  isLogin: true,
                ),
                EcoButton(
                  loginText: "Create Account",
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
