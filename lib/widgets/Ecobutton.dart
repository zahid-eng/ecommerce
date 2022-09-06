import 'package:flutter/material.dart';
import 'package:my_project/utils/colors.dart';
import 'package:my_project/utils/styles.dart';

class EcoButton extends StatelessWidget {
  String? loginText;
  bool? isLogin;
  EcoButton({this.loginText, this.isLogin = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isLogin == false ? Colors.white : AppColors.SecondaryColor,
          border: Border.all(
              color:
                  isLogin == false ? AppColors.SecondaryColor : Colors.white)),
      child: Center(
        child: Text(
          loginText ?? "",
          style: TextStyle(
              fontSize: 18,
              color: isLogin == false ? AppColors.SecondaryColor : Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
