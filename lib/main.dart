import 'package:flutter/material.dart';
import 'package:practice_3/hadeeth/hadeethdetails/hadeethdetails_screen.dart';
import 'package:practice_3/home/home_screen.dart';
import 'package:practice_3/home/theme.dart';
import 'package:practice_3/quran/quran_details/qurandetailsscreen.dart';
import 'package:practice_3/quran/quranscreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: IslamiTheme.lightMode,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes:{
        HomeScreen.routeName: (context)=>HomeScreen(),
        QuranDetailsScreen.routeName: (context)=>QuranDetailsScreen(),
        HadeethDetailsScreen.routeName: (context)=>HadeethDetailsScreen(),
      } ,
    );
  }
}

