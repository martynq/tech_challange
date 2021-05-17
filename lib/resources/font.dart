import 'package:flutter/material.dart';
import 'package:flutter_country_code_picker/resources/colors.dart';

class AppFonts {
  AppFonts._();

  static const fontFamily = "Poppins";
  static final basicStyle = TextStyle(
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
  );

  static final poppins15Yellow = basicStyle.copyWith(fontSize: 15, color: AppColors.yellowYolk, fontWeight: FontWeight.w400);
  static final poppins25 = basicStyle.copyWith(fontSize: 25, color: AppColors.greyPepper, fontWeight: FontWeight.w600);
  static final poppins15Grey = basicStyle.copyWith(fontSize: 15, color: AppColors.greyPepper, fontWeight: FontWeight.w400);
  static final poppins15GreyWithOpacity = basicStyle.copyWith(fontSize: 15, color: AppColors.greyPepper.withOpacity(0.2), fontWeight: FontWeight.w400);
  static final poppins15GreyW600 = basicStyle.copyWith(fontSize: 15, color: AppColors.greyPepper, fontWeight: FontWeight.w600);
  static final poppins15White = basicStyle.copyWith(fontSize: 15, color: AppColors.white, fontWeight: FontWeight.w400);



}