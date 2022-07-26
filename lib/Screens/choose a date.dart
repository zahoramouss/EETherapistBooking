
import "package:flutter/material.dart";
import "../Ressources/resources.dart";
import "../Ressources/colors&fonts.dart";
import '../Ressources/sizeConfig.dart';
import"../Widgets/dayWidget.dart";
import"../Widgets/button.dart";
class ChooseDate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return ChooseDateState();

} }
class ChooseDateState extends State<ChooseDate>{
  @override
  onClick(){
    Navigator.pushNamed(context, '/chooseAdoctor');
  }
  Widget build(BuildContext context) {
    sizeInformations().Size(context);
   return Scaffold(
     backgroundColor: whiteDate,
     body: SafeArea(child: Column(
       children: [
         //header
         Container(
            color: backgndwhiteColor,
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
                 Text("1",style: TextStyle(
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
             width: sizeInformations.screenWidth/4,
             color: mainColor,
           ),

         ],
       )),
         Align(
           alignment: Alignment.topLeft,

           child: Container(
             margin: EdgeInsets.only(top: sizeInformations.width*24,left: sizeInformations.width*24,bottom: sizeInformations.height*16),

             child: Text(stringPickDate,
               textAlign: TextAlign.left
               ,style: TextStyle(

                 fontFamily:rubikFont,
                 fontSize: sizeInformations.width*18,
                 fontWeight: weight2,
               ),),
           ),
         ),
         //calendar
         Container(
           height: sizeInformations.height*350,
           width: sizeInformations.width*327,
           color: backgndwhiteColor,
           padding: EdgeInsets.all(sizeInformations.width*16),
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text("December2022",style:TextStyle(
                     fontFamily:rubikFont,
                     fontSize: sizeInformations.width*size4,
                     fontWeight: weight1,
                     color:blueTitle2
                   )),
                   //first row of month
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Container(
                        width: sizeInformations.width*23,
                         height: sizeInformations.height*30,
                        // color: Colors.red,
                         child: IconButton(
                           onPressed: (){},
                           icon: Icon(Icons.arrow_back_ios_rounded,color: black,size: sizeInformations.height*20,),
                         ),
                       ),
                       Container(
                         height: sizeInformations.height*30,
                         width: sizeInformations.width*23,
                        // color: Colors.amberAccent,
                         alignment: Alignment.center,
                         child: IconButton(
                           onPressed: (){},
                           icon: Icon(Icons.arrow_forward_ios_rounded,color: black,size: sizeInformations.height*20,),
                         ),
                       )
                     ],
                   ),
                   //second row of days of the week


                 ],
               ),
               Container(
                 margin: EdgeInsets.only(top: sizeInformations.width*11),
                 child: Row(children: [
                   Container(

                     height: sizeInformations.width*40,
                     width: sizeInformations.width*40,
                     child: Text(daysOfTheWeek[0],style: TextStyle(
                       fontFamily: rubikFont,
                       fontWeight: weight2,
                       fontSize: sizeInformations.width*size4,
                       color: blueTitle2,
                     ),),
                   ),
                   Container(
                     height: sizeInformations.width*40,
                     width: sizeInformations.width*40,
                     child: Text(daysOfTheWeek[1],style: TextStyle(
                       fontFamily: rubikFont,
                       fontWeight: weight2,
                       fontSize: sizeInformations.width*size4,
                       color: blueTitle2,
                     ),),
                   ),
                   Container(
                     height: sizeInformations.width*40,
                     width: sizeInformations.width*40,
                     child: Text(daysOfTheWeek[2],style: TextStyle(
                       fontFamily: rubikFont,
                       fontWeight: weight2,
                       fontSize: sizeInformations.width*size4,
                       color: blueTitle2,
                     ),),
                   ),
                   Container(
                     height: sizeInformations.width*40,
                     width: sizeInformations.width*40,
                     child: Text(daysOfTheWeek[3],style: TextStyle(
                       fontFamily: rubikFont,
                       fontWeight: weight2,
                       fontSize: sizeInformations.width*size4,
                       color: blueTitle2,
                     ),),
                   ),
                   Container(
                     height: sizeInformations.width*40,
                     width: sizeInformations.width*40,
                     child: Text(daysOfTheWeek[4],style: TextStyle(
                       fontFamily: rubikFont,
                       fontWeight: weight2,
                       fontSize: sizeInformations.width*size4,
                       color: blueTitle2,
                     ),),
                   ),
                   Container(
                     height: sizeInformations.width*40,
                     width: sizeInformations.width*40,
                     child: Text(daysOfTheWeek[5],style: TextStyle(
                       fontFamily: rubikFont,
                       fontWeight: weight2,
                       fontSize: sizeInformations.width*size4,
                       color: blueTitle2,
                     ),),
                   ),
                   Container(
                     height: sizeInformations.width*40,
                     width: sizeInformations.width*40,
                     child: Text(daysOfTheWeek[6],style: TextStyle(
                       fontFamily: rubikFont,
                       fontWeight: weight2,
                       fontSize: sizeInformations.width*size4,
                       color: blueTitle2,
                     ),),
                   ),
                 ],),
               ),
               Row(
                 children: [
                   dayWidget(false,false,"1"),
                   dayWidget(false,false,"2"),
                   dayWidget(false,false,"3"),
                   dayWidget(false,false,"4"),
                   dayWidget(false,false,"5"),
                   dayWidget(false,false,"6"),
                   dayWidget(false,false,"7"),
                 ],
               ),
               Row(
                 children:[
                   dayWidget(false,false,"8"),
                   dayWidget(false,false,"9"),
                   dayWidget(false,false,"10"),
                   dayWidget(false,false,"11"),
                   dayWidget(false,false,"12"),
                   dayWidget(false,false,"13"),
                   dayWidget(false,false,"14"),
                 ]
               ),
               Row(
                children: [
                  dayWidget(false,false,"15"),
                  dayWidget(false,false,"16"),
                  dayWidget(false,false,"17"),
                  dayWidget(true,false,"18"),
                  dayWidget(false,false,"19"),
                  dayWidget(false,false,"20"),
                  dayWidget(false,false,"21"),
                ],
               ),
               Row(
                 children: [
                   dayWidget(false,false,"22"),
                   dayWidget(false,false,"23"),
                   dayWidget(false,false,"24"),
                   dayWidget(false,false,"25"),
                   dayWidget(false,false,"26"),
                   dayWidget(false,false,"27"),
                   dayWidget(false,false,"28"),
                 ],
               ),
               Row(
                 children: [
                   dayWidget(false,false,"29"),
                   dayWidget(false,false,"30"),
                   dayWidget(false,true,"1"),
                   dayWidget(false,true,"2"),
                   dayWidget(false,true,"3"),
                   dayWidget(false,true,"4"),
                   dayWidget(false,true,"5"),
                 ],
               ),
             ],
           ),

         ),
        Container(
           margin:EdgeInsets.only(left: sizeInformations.width*24,top:sizeInformations.width*24,) ,
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(stringPickTime,style:TextStyle(
              fontFamily:rubikFont,
              fontSize: sizeInformations.width*size3,
              fontWeight: weight2,
              color: blueTitle2
            ),
              textAlign: TextAlign.end,
            ),
          ),
        ),
         Expanded(
           child: Row (
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:[
               Container(
                 height: sizeInformations.height*44,
                 width: sizeInformations.width*132.5,
                 padding:EdgeInsets.only(left: sizeInformations.width*12),
                 decoration:BoxDecoration(
                   borderRadius: BorderRadius.circular(radius1),
                   color:backgndwhiteColor
                 ),
                 child:Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("10:00",style:TextStyle(
                       fontWeight: weight2,
                       fontFamily: rubikFont,
                       fontSize: sizeInformations.width*size4,
                       color:blueTitle2
                     )),
                     Expanded(
                       child: Container(
                         //color: Colors.red,
                       ),
                     ),
                     IconButton(
                       onPressed: (){},
                       icon:Icon(Icons.keyboard_arrow_down_outlined,color: mainColor,),
                     )
                   ],
                 )
               ),
               Text("to",style: TextStyle(
                 fontFamily: rubikFont,
                 fontWeight: weight3,
                 fontSize: sizeInformations.width*14,
                 color:descriptionColor
               ),),
               Container(
                   height: sizeInformations.height*44,
                   width: sizeInformations.width*132.5,
                   padding:EdgeInsets.only(left: sizeInformations.width*12),
                   decoration:BoxDecoration(
                       borderRadius: BorderRadius.circular(radius1),
                       color:backgndwhiteColor
                   ),
                   child:Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text("14:00",style:TextStyle(
                           fontWeight: weight2,
                           fontFamily: rubikFont,
                           fontSize: sizeInformations.width*size4,
                           color:blueTitle2
                       )),
                       Expanded(
                         child: Container(
                           //color: Colors.red,
                         ),
                       ),
                       IconButton(
                         onPressed: (){},
                         icon:Icon(Icons.keyboard_arrow_down_outlined,color: mainColor,),
                       )
                     ],
                   )
               ),
             ]
           ),
         ),
         Container(
           width: sizeInformations.screenWidth,
           height: sizeInformations.height*152,
           color: backgndwhiteColor,
           child:Column(
             children: [

               Container(
                 margin:EdgeInsets.only(
                   top: sizeInformations.width*30,
                   bottom: sizeInformations.height*20,
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                   Row(children: [
                     Row(children: [
                       Icon(Icons.date_range,color:descriptionColor),
                       Text('December 18, 2021',style:TextStyle(
                           fontFamily: rubikFont,
                           fontWeight: weight2,
                           fontSize: sizeInformations.width*size4,
                           color: blueTitle2
                       )),
                     ],),
                   ],),
                  Container(
                    height: sizeInformations.height*24,
                    width: sizeInformations.width*1,
                      color: graybar,
                  ),
                   Row(children: [
                     Icon(Icons.access_time,color:descriptionColor),
                     Text('10.00-14.00',style:TextStyle(
                         fontFamily: rubikFont,
                         fontWeight: weight2,
                         fontSize: sizeInformations.width*size4,
                         color: blueTitle2
                     )),
                   ],),
                 ],),
               ),
               buttonSlow(sizeInformations.width, onClick,stringButtonNextFindAdoctor,sizeInformations.height,sizeInformations.width),

             ],
           )

         ),
         //botton

       ],
     ),

     ),
   );
  }

  }
