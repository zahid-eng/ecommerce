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
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController rtpassC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        // ignore: prefer_const_literals_to_create_immutables
        child: Form(
          child: Stack(
            children: [
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
                  SizedBox(height: 15),
                  EcotextField(
                    controller: emailC,
                    text: "Enter Email",
                  ),
                  EcotextField(
                    text: "Enter password",
                    isPassword: true,
                    controller: passC,
                  ),
                  EcotextField(
                    text: "Retype Password",
                    isPassword: true,
                    controller: rtpassC,
                  ),
                  SizedBox(
                    height: 10,
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
      ),
    );
  }
}
