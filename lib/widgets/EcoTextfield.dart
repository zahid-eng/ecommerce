import 'package:flutter/material.dart';
import 'package:my_project/utils/colors.dart';

class EcotextField extends StatefulWidget {
  String? text;
  bool isPassword;
  IconData? icon;
  TextEditingController? controller;
  bool check;
  // final String? Function(String?) validate;
  EcotextField(
      {this.text,
      this.isPassword = false,
      this.icon,
      this.controller,
      this.check = false});

  @override
  State<EcotextField> createState() => _EcotextFieldState();
}

class _EcotextFieldState extends State<EcotextField> {
  Icon iconChecker() {
    if (widget.isPassword == false && widget.check == false) {
      return Icon(Icons.email);
    } else if (widget.isPassword == false) {
      return Icon(Icons.visibility);
    } else {
      return Icon(Icons.visibility_off);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
          color: AppColors.SecondaryColor,
          borderRadius: BorderRadius.circular(10)),
      height: 60,
      width: double.infinity,
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        controller: widget.controller,
        // validator: validate,
        obscureText: widget.isPassword == false ? false : widget.isPassword,
        decoration: InputDecoration(
            // suffixIcon: isPassword == true
            //     // ? Icon(
            //     Icons.visibility,
            //     color: Colors.white,
            //   )
            // : Icon(
            //     Icons.email,
            //     color: Colors.white,
            //   ),
            suffixIcon: IconButton(
                onPressed: () {
                  if (widget.isPassword == false) {
                    setState(() {
                      widget.isPassword = true;
                    });
                  } else {
                    setState(() {
                      widget.isPassword = false;
                    });
                  }
                },
                icon: iconChecker()),
            contentPadding: EdgeInsets.all(10),
            hintText: widget.text ?? "hintext",
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none),
      ),
    );
  }
}
