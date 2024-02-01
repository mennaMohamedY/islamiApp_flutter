
import 'package:flutter/material.dart';
import 'package:practice_3/quran/quranscreen.dart';
import 'package:practice_3/radio/radioscreen.dart';
import 'package:practice_3/sebha/tasbehscreen.dart';

import '../hadeeth/hadeethscreen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Image(image: AssetImage("assets/images/background.png"),width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
      Scaffold(
        appBar: AppBar( title: Text("Islami")),
      bottomNavigationBar:Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xffB7935F)
        ),
        child: BottomNavigationBar(

          onTap: (index){
            setState(() {

            });
            selectedIndex =index;
          },
          currentIndex: selectedIndex,

          items: [BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),label: "Quran"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),label: "tasbeh"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeeth.png")),label: "ahadeeth"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")) ,label:"radio" "")],),
      ),
      body: tabsScreen[selectedIndex],)],

    );
  }

  List<Widget> tabsScreen=[QuranScreen(),TasbehScreen(),HadeethScreen(),RadioScreen()];

}
