import 'package:doctorppointment/Ressources/colors&fonts.dart';
import"package:flutter/material.dart";
import '../Ressources/sizeConfig.dart';
class previousDoctorsList extends StatefulWidget{
   @required String ?img;
   String ?doctorName;
   String ?availible;
   String ?doctorSpeciality;
  late  Color colorSurface;
 previousDoctorsList  (this.img,this.doctorName,this.availible,this.doctorSpeciality,this.colorSurface, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return previousDoctorslistState();

  }

}
class previousDoctorslistState extends State<previousDoctorsList>{
  @override
  Widget build(BuildContext context) {
    sizeInformations().Size(context);
  return Container(
    height: sizeInformations.height*162,
    width: sizeInformations.width*154,

    margin: EdgeInsets.only(left: sizeInformations.height*24),
    decoration:BoxDecoration(
      color: backgndwhiteColor,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: mainColor
      ),
    ),

      child: Stack(
        children: [


       Container(
         margin: EdgeInsets.only(top:sizeInformations.width*9.5,left: sizeInformations.width*9.5),
         child:           Image.asset("assets/icons/cheked.png",scale: 1.5,),
       ),
          Center(
            child: Column(
              children: [
                SizedBox(
                 // color: Colors.red,
                 height:sizeInformations.height*48,
                 width: sizeInformations.height*48,
                 // padding: EdgeInsets.only,
                  child: Image.asset("assets/images/6.png",fit: BoxFit.fill,),
                ),
                Container(
                  margin: EdgeInsets.only(top: sizeInformations.height*8),
                  child: Text("${widget.doctorName}",style: TextStyle(
                    fontFamily:"Rubik",
                    fontSize: sizeInformations.width*14,
                    fontWeight: FontWeight.w500,
                    color: blueTitle2

                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: sizeInformations.height*2),
                  child: Text("${widget.doctorSpeciality}",style: TextStyle(
                      fontFamily:"Rubik",
                      fontSize: sizeInformations.width*12,
                      fontWeight: FontWeight.w400,
                      color: descriptionColor

                  ),),
                ),
                Container(
                  height: sizeInformations.height*25,
                  width: sizeInformations.width*66,
                  margin: EdgeInsets.only(top: sizeInformations.height*6),
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: widget.colorSurface.withOpacity(0.2),
                  ),
                              child:Text('${widget.availible}',

                                  textAlign:TextAlign.center
                                  ,style:TextStyle(
                    fontFamily:"Rubik",
                    fontSize: sizeInformations.width*12,
                    fontWeight: FontWeight.w400,
                                color: widget.colorSurface,
                  )),
                ),
              ],
            ),
          ),
        ],
      ),

  );
  }

}