import 'package:doctorppointment/Ressources/resources.dart';
import 'package:flutter/material.dart';
import '../Ressources/sizeConfig.dart';
import '../Widgets/previousDoctorsList.dart';
import '../Ressources/colors&fonts.dart';
import'../Widgets/doctorListWidget.dart';
import 'package:doctorppointment/Widgets/button.dart';
class selectDoctor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return selectDoctorState();
  }


}
class selectDoctorState extends State<selectDoctor>{
  Image  img1=Image.asset("assets/images/1.png");
  Image  img2=Image.asset("assets/images/doctor2.png");
  Image  img3=Image.asset("assets/images/doctor3.png");
  Image  img4=Image.asset("assets/images/doctor4.png");
  void choosededoctor(){}
  @override

  String im='assets/images/doctor5.png';
  Widget build(BuildContext context) {

    sizeInformations().Size(context);
  return Scaffold(
    backgroundColor:whiteDate,
    body: SafeArea(


          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.s,
            children: [
              //the head
              Container(

                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back,color: blueTitle2,),

                    ),
                    Text(stringBooking,style: TextStyle(
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize:sizeInformations.width*20,
                        color: blueTitle2
                    ),),
                    Row(children: [
                      Text("2",style: TextStyle(
                          fontFamily: "Rubik",
                          fontSize: sizeInformations.width*14,
                          fontWeight: FontWeight.w400,
                          color: blueTitle2
                      ),),
                      Text("/4",style:TextStyle(
                          fontFamily: "Rubik",
                          fontSize: sizeInformations.width*14,
                          fontWeight: FontWeight.w400,
                          color: descriptionColor
                      ),),
                    ],)
                  ],
                ),
              ),
              //the bar
              Container(
                height: sizeInformations.height*5,
                margin: EdgeInsets.only(),
                color: graybar,
                child: Row(
                  children: [
                   Container(
                     width: sizeInformations.screenWidth/2,
                     color: mainColor,
                   ),

                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: sizeInformations.height*24,bottom: sizeInformations.height*16,left: (sizeInformations.width*(375-327)/2) ),
                  child: Text(stringPreviousDoctor,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontFamily:"Rubik",
                      fontWeight: FontWeight.w500,

                      fontSize:sizeInformations.width*18,
                    ),),
                ),
              ),

              SizedBox(
                height: sizeInformations.height*162,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    previousDoctorsList(im,doctors[1],"availible",doctorsSpecialities[1],mainColor, ),
                    previousDoctorsList(im,doctors[1],"availible",doctorsSpecialities[1],mainColor, ),

                    previousDoctorsList(im,doctors[1],"availible",doctorsSpecialities[1],mainColor, ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: sizeInformations.height*24,left:sizeInformations.width*24,right:sizeInformations.width*24,bottom: sizeInformations.width*16,),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(stringAvaibleDoctor,style: TextStyle(
                      fontFamily:"Rubik",
                      fontWeight: FontWeight.w500,
                      fontSize: sizeInformations.width*18,
                      color:blueTitle2
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(stringNear,style:TextStyle(
                          fontFamily:"Rubik",
                          fontWeight: FontWeight.w500,
                          fontSize: sizeInformations.width*14,
                          color: mainColor
                        ) ,),
                        Image.asset("assets/icons/arrow.png"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizeInformations.height*380,
                width:sizeInformations.height*380 ,
                child: ListView(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    doctorsList(img: img1,doctorname:doctors[0],speciality:doctorsSpecialities[0]),
                    doctorsList(img: img2,doctorname:doctors[1],speciality:doctorsSpecialities[1]),
                    doctorsList(img: img3,doctorname:doctors[2],speciality:doctorsSpecialities[2]),
                    doctorsList(img: img4,doctorname:doctors[3],speciality:doctorsSpecialities[3]),
                  ],
                ),
              ),
              buttonSlow(sizeInformations.width,  choosededoctor,stringButtonNextFillOUtData,sizeInformations.height,sizeInformations.width),


            ],
          ),
        ),


  );
  }

}

