import 'package:calculator_app/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:25, vertical: 30),
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: AppColors.primaryColor,
            filled: true),
        style: TextStyle(fontSize: 50),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
