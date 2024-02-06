
import 'package:flutter/material.dart';
import 'package:practice_3/providers/app_config_provider.dart';
import 'package:practice_3/quran/quranscreen.dart';
import 'package:practice_3/radio/radioscreen.dart';
import 'package:practice_3/sebha/tasbehscreen.dart';
import 'package:practice_3/settings/settings.dart';
import 'package:provider/provider.dart';
import '../hadeeth/hadeethscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [(provider.AppThemeMode ==ThemeMode.dark)? Image(image: AssetImage("assets/images/bg.png"),width: double.infinity,height: double.infinity,fit: BoxFit.fill,):
        Image(image: AssetImage("assets/images/background.png"),width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
      Scaffold(
        appBar: AppBar( title: Text(AppLocalizations.of(context)!.appBar_title)),
      bottomNavigationBar:Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).primaryColor
        ),
        child: BottomNavigationBar(

          onTap: (index){
            setState(() {

            });
            selectedIndex =index;
          },
          currentIndex: selectedIndex,

          items: [BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),label: AppLocalizations.of(context)!.quranTab),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),label: AppLocalizations.of(context)!.sebhaTab),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeeth.png")),label: AppLocalizations.of(context)!.hadeethTab),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")) ,label:AppLocalizations.of(context)!.radioTab),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: AppLocalizations.of(context)!.settingsTab )],),

      ),
      body: tabsScreen[selectedIndex],)],

    );
  }

  List<Widget> tabsScreen=[QuranScreen(),TasbehScreen(),HadeethScreen(),RadioScreen(),Settings()];

}
