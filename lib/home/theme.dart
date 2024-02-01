
import 'package:flutter/material.dart';

class IslamiTheme{
  static var primaryColor=Color(0xffB7935F);
  static var onPrimaryColor=Color(0xff242424);
  static var textStyle25=TextStyle(fontWeight: FontWeight.w400,color: IslamiTheme.onPrimaryColor,fontSize: 25);


  static ThemeData lightMode= ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme( iconTheme: IconThemeData(color: Colors.black),elevation: 0, backgroundColor: Colors.transparent,
        centerTitle: true,titleTextStyle:TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
         color: IslamiTheme.onPrimaryColor) ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor: IslamiTheme.onPrimaryColor),
    textTheme: TextTheme(
        bodyLarge:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff242424),fontSize: 30),
        bodyMedium: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff242424),fontSize: 20))

     
  );



}

//style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff242424),fontSize: 30)