import 'package:flutter/material.dart';
import 'package:my_project/utils/colors.dart';

class EcotextField extends StatelessWidget {
  String? text;
  bool? isPassword = false;
  EcotextField({this.text, this.isPassword});
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
        obscureText: isPassword ?? false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintText: text ?? "hintext",
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none),
      ),
    );
  }
}
