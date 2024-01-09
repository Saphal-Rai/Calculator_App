import 'package:calculator_app/constant/colors.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 160,
      width:70,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(40),),
      child: Center(child: Text("=",style: TextStyle(fontSize:32),)
      ) ,
    );
  }
}
