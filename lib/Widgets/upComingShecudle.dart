import 'package:flutter/material.dart';
import"../Ressources/sizeConfig.dart";
import '../Ressources/colors&fonts.dart';
import '../Ressources/resources.dart';

class UpComingSchedule extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return UpComingScheduleState();
  }

}
class UpComingScheduleState extends State<UpComingSchedule>{
  @override
  Widget build(BuildContext context) {
    sizeInformations().Size(context);
  return Container(
    margin: EdgeInsets.only(left: sizeInformations.width*24,
     ),

    width: sizeInformations.width*320,
    height: sizeInformations.height*203,
    decoration: BoxDecoration(
      color: mainColor,
      borderRadius: BorderRadius.circular(radius1),
     gradient: LinearGradient(
       begin: Alignment.centerLeft,
       end: Alignment.centerRight,
       colors: [
         gradientColor1,
         gradientColor2
       ]
     )
    ),
    child: Column(

      children: [
        Align(

          alignment: Alignment.centerLeft,
          child: Container(
            width: sizeInformations.width*71,
            height: sizeInformations.height*28,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: sizeInformations.height*16,left: sizeInformations.width*16),
            decoration:BoxDecoration(
              color: backgndwhiteColor.withOpacity(0.24),
              borderRadius: BorderRadius.circular(radius2),

            ),
            child: Text(stringMonthly,
              textAlign: TextAlign.center,
              style: TextStyle(
              fontFamily:rubikFont,
              fontSize: sizeInformations.width*size4,
              fontWeight: weight3,
              color: backgndwhiteColor,
            ),),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: sizeInformations.width*16,top: sizeInformations.height*8),
          child: Text(stringMedicalCheckup,style: TextStyle(
            fontFamily:rubikFont,
            fontWeight: weight2,
            color: backgndwhiteColor,
            fontSize: sizeInformations.width*size2
          ),),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: sizeInformations.width*16,top: sizeInformations.height*8,bottom: sizeInformations.height*17),
          child: Text(stringTodaySchedule,style: TextStyle(
            fontSize: sizeInformations.width*size4,
            fontWeight: weight3,
            fontFamily: rubikFont,
            color: backgndwhiteColor,
          ),),
        ),
       Divider(
         endIndent:sizeInformations.width*166,
         color: backgndwhiteColor.withOpacity(0.24),
       ),
      Container(
        padding: EdgeInsets.only(left: 16),
        child: Row(
         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/doctor5.png'),
            Container(
              margin: EdgeInsets.only(left: sizeInformations.width*14),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(stringDoctorName,style: TextStyle(
                    fontFamily: rubikFont,
                    fontWeight: weight2,
                    fontSize:sizeInformations.width*size4,
                    color: backgndwhiteColor
                  ),),
                  Text(stringFamilyName,style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight3,
                      fontSize:sizeInformations.width*size4,
                      color: backgndwhiteColor
                  ),)
                ],
              ),
            ),
          ],
        ),
      )
      ],
    ),
  );
  }

}