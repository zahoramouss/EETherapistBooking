import 'package:flutter/material.dart';
import"Screens/mobile.dart";
import'Screens/selectDoctor.dart';
import'Screens/Home.dart';
import 'Screens/choose a date.dart';
import "Screens/mySchedule.dart";
import 'package:flutter/services.dart';
void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp( MaterialApp(
      debugShowCheckedModeBanner:false,
    home:Home(),
      routes:{

        "home":(BuildContext context)=> Home(),
        "mobile":(BuildContext context)=> mobile(),
        "mySheddule":(BuildContext context)=> mySchedule(),
        "chooseAdoctor":(BuildContext context)=> selectDoctor(),
        "chooseAdate":(BuildContext context)=> ChooseDate(),

      }
  ));


}

