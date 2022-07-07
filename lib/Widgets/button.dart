import 'package:doctorppointment/Ressources/colors&fonts.dart';

import "package:flutter/material.dart";
Widget buttonSlow(double sizePercent, Function() onPressed, String title,double heighpercent,double widthpercent){
  return  Container(
    height:heighpercent*40 ,
    width:widthpercent*326,
    decoration: BoxDecoration(
      color: mainColor,
      borderRadius: BorderRadius.circular(5)
    ),
    child: ElevatedButton(onPressed: onPressed,
      style:ElevatedButton.styleFrom(
        primary: mainColor,
      ),
      child: Text(title,style: TextStyle(
      fontFamily: "Rubik",
      fontWeight: FontWeight.w500,
      fontSize:sizePercent*14,
      color: backgndwhiteColor,
    ),),),
  );

}