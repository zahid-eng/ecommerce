import 'package:flutter/material.dart';
import 'package:my_project/utils/colors.dart';

class Appstyle {
  static const boldStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold, color: AppColors.PrimaryColor);
  static const normalStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: AppColors.SecondaryColor);
  static const errorStyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.normal, color: AppColors.ErroColor);
  static const AccentStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AppColors.AccentColor);
}
