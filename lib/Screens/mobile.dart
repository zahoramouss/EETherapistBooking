import 'package:doctorppointment/Widgets/button.dart';
import 'package:flutter/material.dart';
import '../Ressources/resources.dart';
import '../Ressources/sizeConfig.dart';
import '../Ressources/colors&fonts.dart';


class mobile extends StatefulWidget {
  const mobile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mobileState();
  }
}

class mobileState extends State<mobile> {
  @override
  void setitile(){}
  Widget build(BuildContext context) {
    sizeInformations().Size(context);
    return Scaffold(
      //backgroundColor: mainColor,
      body: SafeArea(
        child: Container(
          color: mainColor,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //width: MediaQuery.of(context).size.width,
                  height: sizeInformations.height * 73,
                  color: mainColor,
                  child: Center(
                    child: Text(string_Medicy,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      color: backgndwhiteColor,
                      fontFamily: "Rubik",
                      fontSize: sizeInformations.width*24,
                      fontWeight: FontWeight.w500,
                    ),),

                  ),
                ),
                //the white space of the page
                Expanded(
                  child: Container(
                    height: 200,
                    decoration:  BoxDecoration(
                        color: backgndwhiteColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(23),
                          topRight: Radius.circular(23),
                        )),
                    child: Column(
                     children: [
                       Container(
                         height: sizeInformations.height*6.58,
                         width: sizeInformations.width*39.48,
                         margin:EdgeInsets.only(top:sizeInformations.height*14,),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(3.28),
                           color: graytheme
                         ),
                       ),
                       Container(
                         margin:EdgeInsets.only(top: sizeInformations.height*65),
                         child: Image.asset("assets/images/vector1.png"),
                       ),
                       Container(
                         margin: EdgeInsets.only(top:sizeInformations.height*89),
                         child: Text(stringPrivateConsultation,style: TextStyle(
                           fontFamily:"Rubik",
                           fontWeight: FontWeight.w500,
                           fontSize:24,
                             color:blueTitle,
                         ),),

                       ),

                       Container(
                         margin: EdgeInsets.only(bottom: sizeInformations.height*43),
                         child: Text(stringPrivateConsultationParagraph,textAlign:TextAlign.center,style: TextStyle(
                           fontFamily: "Rubik",
                           fontWeight: FontWeight.w400,
                           fontSize: sizeInformations.width*14,
                           color: descriptionColor
                         ),),
                       ),
                       Container(
                         margin: EdgeInsets.only(bottom: 14),
                         child:Image.asset("assets/icons/dot.png",),
                           ),
                       buttonSlow(sizeInformations.width,setitile,stringButtonGetStarted,sizeInformations.height,sizeInformations.width),

                     ],
                    ),
                  ),
                ),
              ],
            ),

        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
