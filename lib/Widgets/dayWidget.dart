import"package:flutter/material.dart";
import '../Ressources/colors&fonts.dart';
import '../Ressources/sizeConfig.dart';
class dayWidget extends StatefulWidget{
  @override
  late bool isSelected;
  late bool theNextMont;
  late String dayNumbert;

  dayWidget(this.isSelected,this.theNextMont,this.dayNumbert);
  State<StatefulWidget> createState() {
   return  dayWidgetState();
  }

}
class dayWidgetState extends State<dayWidget>{
  @override
  Widget build(BuildContext context) {
    sizeInformations().Size(context);
   return Container(

     height: sizeInformations.width*40,
     width: sizeInformations.width*40,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),
       color: (widget.isSelected)?mainColor:Colors.transparent
     ),
     child: Center(
       child: Text('${widget.dayNumbert}',
         textAlign: TextAlign.center,
         style: TextStyle(
         fontFamily: rubikFont,
         fontWeight: weight3,
         fontSize: sizeInformations.width*size4,
         color:(widget.isSelected)? backgndwhiteColor:((widget.theNextMont)?Color(0xffa6b5bf):blueTitle2),
       ),),
     ),
   );
  }

}