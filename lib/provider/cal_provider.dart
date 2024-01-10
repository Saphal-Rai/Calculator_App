import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{
 final compController = TextEditingController();

 setValue(String value) {
   String str = compController.text;
   switch(value){
     case "c":
       compController.clear();
       break;
     case "AC":
       compController.text = str.substring(0, str.length);
       break;
     case "x":
       compController.text += "*";
       break;
     case "=":
       compute();
       break;
       default:
         compController.text += value;
   }
  compController.selection =  TextSelection.fromPosition(
      TextPosition (offset: compController.text.length));
 }
 compute(){
   String text = compController.text;
   compController.text = text.interpret().toString();
 }

 @override
  void dispose(){
   super.dispose();
   compController.dispose();
 }
}
