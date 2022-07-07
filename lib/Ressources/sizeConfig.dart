import"package:flutter/material.dart";




class sizeInformations {
 static  late double screenHeight;
 static late double  screenWidth;
 static late double height;
  static late double width ;

 static double designScreenWidth=375;
 static double designScreenHeight=812;
  late MediaQueryData     _mediaQueryData ;
  //sizeInformations(this.screenHeight,this.screenWidth,this.designScreenWidth,this.designScreenHeight,this.height,this.width)
  void Size(BuildContext context){
    _mediaQueryData=MediaQuery.of(context);
    screenHeight=_mediaQueryData.size.height;
    screenWidth=_mediaQueryData.size.width;
    print(screenHeight);
    height=screenHeight/designScreenHeight;
    width=screenWidth/designScreenWidth;
    print(height*73);

  }}