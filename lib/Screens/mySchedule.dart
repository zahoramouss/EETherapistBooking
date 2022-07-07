import "package:flutter/material.dart";
import '../Ressources/resources.dart';
import '../Ressources/colors&fonts.dart';
import '../Ressources/sizeConfig.dart';
import"../widgets/scheduleWidget.dart";
class mySchedule extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return myScheduleState();
  }
}
class myScheduleState extends State<mySchedule>{
  @override
  Widget build(BuildContext context) {
    sizeInformations().Size(context);
  return Scaffold(
    body: SafeArea(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical:sizeInformations.height*16,horizontal: sizeInformations.width*25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(stringMySchedule,style:TextStyle(
                  fontFamily: rubikFont,
                  fontWeight: weight2,
                  fontSize: sizeInformations.width*size2,
                  color: blueTitle2,
                ),
               ),
                Icon(Icons.settings_outlined,color: blueTitle2,)
              ],
            ),
          ),
          Divider(
            color: graybar,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: sizeInformations.width*25),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('December',style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight2,
                      fontSize: sizeInformations.width*size4,
                      color: blueTitle2
                    ),),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.keyboard_arrow_down_outlined,color: mainColor,),
                    )
                  ],
                ),
                Text(stringToday,
                    style:TextStyle(
                      fontFamily: rubikFont,
                      fontWeight:weight2,
                      fontSize: sizeInformations.width*size4,
                      color: mainColor,
                    ))
              ],
            ),
          ),

          Row(
            children: [
              Container(
                height:sizeInformations.height*54,
                width: sizeInformations.screenWidth/7,
                decoration: BoxDecoration(
                  border:Border(bottom: BorderSide(width: 1, color: mainColor),
                  )
                ),
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(daysOfTheWeek2[0],style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight3,
                      fontSize: sizeInformations.width*size4,
                      color:weekGray,
                    ),),
                    Text('7',style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight2,
                      fontSize: sizeInformations.width*size4,
                      color: mainColor,
                    ),),
                  ],
                ),
              ),
              Container(
                height:sizeInformations.height*54,
                width: sizeInformations.screenWidth/7,
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(width: 1, color: Colors.transparent),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(daysOfTheWeek2[1],style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight3,
                      fontSize: sizeInformations.width*size4,
                      color:weekGray,
                    ),),
                    Text('8',style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight2,
                      fontSize: sizeInformations.width*size4,
                      color: blueTitle2,
                    ),),
                  ],
                ),
              ),
              Container(
                height:sizeInformations.height*54,
                width: sizeInformations.screenWidth/7,
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(width: 1, color: Colors.transparent),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(daysOfTheWeek2[2],style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight3,
                      fontSize: sizeInformations.width*size4,
                      color:weekGray,
                    ),),
                    Text('9',style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight2,
                      fontSize: sizeInformations.width*size4,
                      color: blueTitle2,
                    ),),
                  ],
                ),
              ),
              Container(
                height:sizeInformations.height*54,
                width: sizeInformations.screenWidth/7,
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(width: 1, color: Colors.transparent),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(daysOfTheWeek2[3],style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight3,
                      fontSize: sizeInformations.width*size4,
                      color:weekGray,
                    ),),
                    Text('10',style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight2,
                      fontSize: sizeInformations.width*size4,
                      color: blueTitle2,
                    ),),
                  ],
                ),
              ),
              Container(
                height:sizeInformations.height*54,
                width: sizeInformations.screenWidth/7,
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(width: 1, color:  Colors.transparent),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(daysOfTheWeek2[4],style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight3,
                      fontSize: sizeInformations.width*size4,
                      color:weekGray,
                    ),),
                    Text('11',style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight2,
                      fontSize: sizeInformations.width*size4,
                      color: blueTitle2,
                    ),),
                  ],
                ),
              ),
              Container(
                height:sizeInformations.height*54,
                width: sizeInformations.screenWidth/7,
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(width: 1, color:  Colors.transparent),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(daysOfTheWeek2[5],style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight3,
                      fontSize: sizeInformations.width*size4,
                      color:weekGray,
                    ),),
                    Text('12',style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight2,
                      fontSize: sizeInformations.width*size4,
                      color: blueTitle2,
                    ),),
                  ],
                ),
              ),
              Container(
                height:sizeInformations.height*54,
                width: sizeInformations.screenWidth/7,
                decoration: BoxDecoration(
                    border:Border(bottom: BorderSide(width: 1, color: Colors.transparent),
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(daysOfTheWeek2[6],style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight3,
                      fontSize: sizeInformations.width*size4,
                      color:weekGray,
                    ),),
                    Text('13',style: TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight2,
                      fontSize: sizeInformations.width*size4,
                      color: blueTitle2,
                    ),),
                  ],
                ),
              ),

            ],
          ),
          Expanded(child: Container(
            color: whiteDate,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: sizeInformations.width*24,top: sizeInformations.width*24),
                  child: Text(stringTodaysDate,style:TextStyle(
                    fontFamily: rubikFont,
                    fontWeight: weight1,
                    fontSize: sizeInformations.width*size4,
                    color: blueTitle2
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(left: sizeInformations.width*24),
                  child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius:sizeInformations.width*9,
                            backgroundColor: mainColor.withOpacity(0.3),
                            child: CircleAvatar(
                              radius:sizeInformations.width*5,
                              backgroundColor: mainColor,
                            ),
                          ),
                          Container(
                            width: sizeInformations.width*2,
                            height:sizeInformations.height*147,
                            color: mainColor,
                            margin: EdgeInsets.symmetric(vertical: sizeInformations.height*5),
                          ),
                          CircleAvatar(
                            radius:sizeInformations.width*5,
                            backgroundColor: descriptionColor,
                          ),
                        ],
                      ),
                    ),
                    Column(

                      children: [
                        scheduleWidget(time:stringConsultationTime,imagePath:"assets/images/doctor5.png",checkUp:stringMedicalCheckup,doctorName:stringDoctorName,doctorSpeciality: specialities[1]),
                        scheduleWidget(time:stringConsultationTime2,imagePath:"assets/images/6.png",checkUp:stringRoutineConsultation,doctorName:stringDoctor2,doctorSpeciality: specialities[0]),

                      ],
                    ),
                  ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: sizeInformations.width*24,top: sizeInformations.width*24),
                  child: Text(stringTomorrowDate,style:TextStyle(
                      fontFamily: rubikFont,
                      fontWeight: weight1,
                      fontSize: sizeInformations.width*size4,
                      color: blueTitle2
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(left: sizeInformations.width*24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                       margin: EdgeInsets.only(top: sizeInformations.width*0),
                        child: Column(
                          children: [
                            Container(
                              height: sizeInformations.height*0,
                                   width:sizeInformations.width*18 ,
                                   color: Colors.red,
                            ),
                            CircleAvatar(
                              radius:sizeInformations.width*9,
                              backgroundColor: mainColor.withOpacity(0.3),
                              child: CircleAvatar(
                                radius:sizeInformations.width*5,
                                backgroundColor: mainColor,
                              ),
                            ),
                            Container(
                              width: sizeInformations.width*2,
                              height:sizeInformations.height*147,
                              color: mainColor,
                              margin: EdgeInsets.symmetric(vertical: sizeInformations.height*5),
                            ),
                            CircleAvatar(
                              radius:sizeInformations.width*5,
                              backgroundColor: descriptionColor,
                            ),
                          ],
                        ),
                      ),

                     Column(
                       children: [
                         scheduleWidget(time:stringConsultationTime,imagePath:"assets/images/doctor5.png",checkUp:stringMedicalCheckup,doctorName:stringDoctorName,doctorSpeciality: specialities[1]),
                         scheduleWidget(time:stringConsultationTime,imagePath:"assets/images/doctor5.png",checkUp:stringMedicalCheckup,doctorName:stringDoctorName,doctorSpeciality: specialities[1]),
                       ],
                     )




                    ],
                  ),
                ),
              ],
            ),
          ),

          ),

        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined,color: mainColor,),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today_outlined),
        label: 'Schedule',
      ),
      BottomNavigationBarItem(
        icon: Container(
          margin:EdgeInsets.only(bottom:0),
          decoration: BoxDecoration(
           color:mainColor,
            shape:BoxShape.circle,

          ),
          //color: mainColor,
          child: Icon(Icons.call),),
        label: 'Calls',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.call),
        label: 'Calls',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_box),
        label: 'Calls',
      ),

    ],),
  );
  }

}