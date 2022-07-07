import 'package:flutter/material.dart';
import '../Ressources/sizeConfig.dart';
import '../Ressources/colors&fonts.dart';

class doctorsList extends StatefulWidget {
  final  Image  ? img;
  final String? speciality;
  final String? doctorname;

  doctorsList({Key? key,this.img,this.doctorname,this.speciality}): super(key: key);
  @override
  State<StatefulWidget> createState() {
    return doctorsListState();
  }
}

class doctorsListState extends State<doctorsList> {
  @override
  Widget build(BuildContext context) {
    sizeInformations().Size(context);
    return Container(
      height: sizeInformations.height * 71,
      width: sizeInformations.width * 327,
      margin: EdgeInsets.only(top: 9),
      padding: EdgeInsets.only(top: 9,left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgndwhiteColor,
      ),
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: widget.img,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${widget.doctorname}",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                    fontSize: sizeInformations.width * 14,
                    color: blueTitle2),
              ),
              Text(
                "${widget.speciality}",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w400,
                    fontSize: sizeInformations.width * 12,
                    color: descriptionColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
