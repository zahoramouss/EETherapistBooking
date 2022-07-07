import 'package:flutter/material.dart';
 import '../Ressources/sizeConfig.dart';
 import '../Ressources/resources.dart';
 import '../Ressources/colors&fonts.dart';
class scheduleWidget extends StatefulWidget{
 // scheduleWidget(String stringConsultationTime, String s, String stringMedicalCheckup, String stringDoctorName, specialiti);
  late String ? time;
  late String ? imagePath;
  late String ? checkUp;
  late String ? doctorName;
  late String ? doctorSpeciality;
  scheduleWidget({Key? key,this.time,this.imagePath,this.checkUp,this.doctorName,this.doctorSpeciality,} ) : super(key: key);

  @override

  State<StatefulWidget> createState() {
  return scheduleWidgetState();
  }

}
class scheduleWidgetState extends State<scheduleWidget>{
  @override
  Widget build(BuildContext context) {
    sizeInformations().Size(context);
    // TODO: implement build
   return Container(
     height: sizeInformations.height*152,
     width: sizeInformations.width*297,

     margin: EdgeInsets.only(left: sizeInformations.width*24,bottom: sizeInformations.height*16),
     padding: EdgeInsets.all( sizeInformations.height*16),
     decoration:BoxDecoration(
       borderRadius: BorderRadius.circular(radius1),
       color: backgndwhiteColor,
     ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text('${widget.time}',style:TextStyle(
           fontFamily: rubikFont,
           fontSize:sizeInformations.width*size4,
           fontWeight: weight3,
           color:descriptionColor,
         ),textAlign: TextAlign.right,),
         Text("${widget.checkUp}",style: TextStyle(
           fontFamily:rubikFont,
           fontWeight: weight2,
           fontSize: sizeInformations.width*size4,
           color: blueTitle2
         ),),
         Divider(
           color: graybar,
         ),
         Row(
           //mainAxisAlignment: MainAxisAlignment.spaceAround,

           children: [
             Container(
               height: sizeInformations.width*39,
               width:sizeInformations.width*39,
               margin: EdgeInsets.only(right: sizeInformations.width*14),
               child:Image.asset("${widget.imagePath}"),
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,

               children: [
                 Text("${widget.doctorName}",style: TextStyle(
                   fontFamily: rubikFont,
                   fontWeight: weight2,

                 ),
                 ),
                 Text("${widget.doctorSpeciality}",style: TextStyle(
                   fontFamily: rubikFont,
                   fontWeight: weight3,
                   fontSize: sizeInformations.width*size5,
                     color:descriptionColor
                 ),),
               ],
             ),
           ],
         )
       ],
     ),
   );
  }

}