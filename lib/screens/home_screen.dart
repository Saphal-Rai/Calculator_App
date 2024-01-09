import 'package:calculator_app/constant/colors.dart';
import 'package:calculator_app/screens/widgets_data.dart';
import 'package:calculator_app/widgets/button.dart';
import 'package:calculator_app/widgets/cal_button.dart';
import 'package:calculator_app/widgets/textfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30 );
    final decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30),)
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          const CustomTextField(),
          const Spacer(),
          Container(
            height: screenHeight *0.6 ,
            width: double.infinity,
            padding: padding,
            decoration: decoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4,(index) => buttonList [index]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4,(index) => buttonList [index + 4]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4,(index) => buttonList [index + 8]),
              ),
             Row(
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: List.generate(3,(index) => buttonList [index + 12]),
                       ),
                       SizedBox(
                         height:20,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: List.generate(3,(index) => buttonList [index + 15]),
                       ),
                       ],
                   ),
                 ),

                     SizedBox(
                       width: 20,
                     ),
                const CalculateButton(),
               ],
             )
            ],
            ),

            ),


        ],
      ),
    );
  }
}

