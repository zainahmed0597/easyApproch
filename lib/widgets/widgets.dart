import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maaz_class/models/constants.dart';

Widget getTextField({
  required String hint
}){
  return TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide:
        const BorderSide(color: Colors.transparent, width: 0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide:
        const BorderSide(color: Colors.transparent, width: 0),
      ),
      contentPadding:
      EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.w),
      filled: true,
      fillColor: kTextFieldColor,
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}