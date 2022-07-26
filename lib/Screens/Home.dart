import 'package:flutter/material.dart';
import '../Ressources/sizeConfig.dart';
import '../Ressources/colors&fonts.dart';
import '../Ressources/resources.dart';
import '../Widgets/upComingShecudle.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    sizeInformations().Size(context);
    String? _value=stringDoctorPlace;

    return Scaffold(
      backgroundColor: backgndwhiteColor,
      body: SafeArea(

          child: Container(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: sizeInformations.width*24,vertical: sizeInformations.width*13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(

                            alignment: Alignment.topLeft,
                            child: Text(stringDoctorComeTo,style: TextStyle(
                                fontFamily: rubikFont,
                                fontWeight: weight2,
                                fontSize: sizeInformations.width*12,
                                color: mainColor

                            ),
                            textAlign: TextAlign.center,),
                          ),
                          Container(
                            height: sizeInformations.height*20,
                            child: DropdownButtonHideUnderline(child: DropdownButton<String>(
                              value: _value,
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:mainColor, // <-- SEE HERE
                              ),
                              elevation: 0, onChanged: (String ?value) {
                              setState((){
                                _value=value! ;
                              });
                            }, items:
                              <String>[stringDoctorPlace, 'Two', 'Free', 'Four']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value,style: TextStyle(
                                      fontFamily: rubikFont,
                                      fontWeight: weight1,
                                      fontSize: sizeInformations.width*size4,
                                      color:blueTitle2
                                  ),),
                                );
                              }).toList(),




                            )),
                          ),
                        ],
                      ),
                      Container(
                       width: sizeInformations.width*34,
                      height: sizeInformations.width*34,
                       decoration:BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: graybar,

                        )
                      ),
                       child:IconButton(
                         onPressed: (){},
                         icon:Image.asset("assets/icons/notifications.png"),
                       ),
                      ),
                    ],
                  ),
                ),

                Divider(
                  color: graybar,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top:sizeInformations.height*16,left: sizeInformations.width*24),
                  child: Text(
                    stringHiAlberto,
                    style: TextStyle(
                        fontFamily: rubikFont,
                        fontWeight: weight2,
                        fontSize: sizeInformations.width * size1,
                        color: blueTitle2),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:sizeInformations.height*4,left: sizeInformations.width*24),

                  alignment: Alignment.centerLeft,
                  child: Text(
                    stringLetsStayHealthy,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: rubikFont,
                        fontWeight: weight3,
                        fontSize: sizeInformations.width * size3,
                        color: descriptionColor),
                  ),
                ),
                Container(
                 height: sizeInformations.height*200,
                  //width: sizeInformations.width*255,
                  child: Image.asset("assets/images/vector2.png",scale: 1,),
                ),
                Container(
                  width: sizeInformations.width * 327,
                  height: sizeInformations.height * 48,
                  margin:EdgeInsets.only(top: sizeInformations.height*20),
                  decoration: BoxDecoration(
                    color: whiteDate,
                    borderRadius: BorderRadius.circular(radius1),
                  ),
                  child: TextField(
                    decoration: InputDecoration(

                      suffixIcon: Image.asset("assets/icons/regulate.png"),
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: stringSearchYourDoctor,
                     hintStyle: TextStyle(
                       fontSize: sizeInformations.width*size4,
                     fontFamily: rubikFont,
                       fontWeight: weight3,
                       color:descriptionColor,
                    ),
                  ),
                )
                /*Row(
                  children: [
                    Icon(Icons.search_rounded),
                  /*TextField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     labelText:stringSearchYourDoctor,
                   ),
                    ),*/

                    //Image.asset("assets/images/reglages.png"),
                  ],
                ),*/
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    top: sizeInformations.height*48,bottom: sizeInformations.height*16,left: sizeInformations.height*24
                  ),
                child: Text(stringUpcomingSchedule,style:TextStyle(
                  fontWeight: weight2,
                  fontFamily: rubikFont,
                  fontSize: sizeInformations.width*size2,
                  color: blueTitle2,
                )),
              ),
                SizedBox(
                  height: sizeInformations.height*210,
                  child:ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index){
                      return UpComingSchedule();
                    },

                  ) ,
                ),
              ],
            ),
          ),
        ),

    );
  }
}
