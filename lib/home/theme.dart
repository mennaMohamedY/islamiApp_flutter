
import 'package:flutter/material.dart';

class IslamiTheme{
  static var primaryColor=Color(0xffB7935F);
  static var onPrimaryColor=Color(0xff242424);

  static var primarydark=Color(0xff141A2E);
  static var onPrimarydark=Color(0xffFACC1D);

  static var textStyle25=TextStyle(fontWeight: FontWeight.w400,color: IslamiTheme.onPrimaryColor,fontSize: 25);


  static ThemeData lightMode= ThemeData(
      primaryColor:primaryColor ,
    dividerColor: primaryColor,
    hintColor: Colors.white,
    shadowColor: Colors.white,
    cardColor: Colors.black,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme( iconTheme: IconThemeData(color: Colors.black),elevation: 0, backgroundColor: Colors.transparent,
        centerTitle: true,titleTextStyle:TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
         color: Colors.black) ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor: IslamiTheme.onPrimaryColor,unselectedItemColor: Colors.white),
    textTheme: TextTheme(
        bodyLarge:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff242424),fontSize: 30),
        bodyMedium: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff242424),fontSize: 20))

     
  );
  static ThemeData darkMode= ThemeData(
    primaryColor: primarydark ,
      dividerColor: onPrimarydark,
      hintColor: Colors.black,
      shadowColor: IslamiTheme.primarydark,
      cardColor: onPrimarydark,


      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme( iconTheme: IconThemeData(color: Colors.white),elevation: 0, backgroundColor: Colors.transparent,
          centerTitle: true,titleTextStyle:TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
              color: Colors.white) ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedItemColor: IslamiTheme.onPrimarydark,unselectedItemColor: Colors.white),
      textTheme: TextTheme(
          bodyLarge:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),
          bodyMedium: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20))


  );



}

//style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff242424),fontSize: 30)