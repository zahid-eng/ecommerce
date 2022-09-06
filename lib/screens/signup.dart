import 'package:flutter/material.dart';
import 'package:my_project/utils/styles.dart';
import 'package:my_project/widgets/EcoTextfield.dart';
import 'package:my_project/widgets/Ecobutton.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        // ignore: prefer_const_literals_to_create_immutables
        child: Stack(
          children: [
            Image.asset(
              "assets/background.jpg"  "Hi",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            SingleChildScrollView(
              child: Column(children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Welcome\n Signup Page",
                    style: Appstyle.boldStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                EcotextField(
                  text: "Enter UserName",
                ),
                EcotextField(
                  text: "Enter Email",
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
