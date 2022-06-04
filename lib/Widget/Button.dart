
import 'package:flutter/material.dart';
class Button extends StatelessWidget{
  final Color color;
  final String text;
  final  Function onTaped;
  Button({
    required this.color,
    required this.text,
     required this.onTaped,

  });
  @override
  Widget build(BuildContext context) {
   return Container(
     height: 50,width: 270,
     padding: EdgeInsets.all(15),
     decoration: BoxDecoration(color: color,
         borderRadius: BorderRadius.circular(20)),
     child: InkWell(
       onTap: onTaped(),
       child: Text(text,
         textAlign: TextAlign.center,
         style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
     ),

   );
  }
}