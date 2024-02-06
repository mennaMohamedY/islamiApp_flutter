
import 'package:flutter/material.dart';
import 'package:practice_3/hadeeth/hadeethdetails/hadeethdetails_screen.dart';
import 'package:practice_3/home/home_screen.dart';
import 'package:practice_3/home/theme.dart';
import 'package:practice_3/providers/app_config_provider.dart';
import 'package:practice_3/quran/quran_details/qurandetailsscreen.dart';
import 'package:practice_3/quran/quranscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( ChangeNotifierProvider(
    create: (context){ return AppConfigProvider();},
      child: MyApp()));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return MaterialApp(
      theme: IslamiTheme.lightMode,
      darkTheme: IslamiTheme.darkMode,
      themeMode: provider.AppThemeMode,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.AppLanguage),

      routes:{
        HomeScreen.routeName: (context)=>HomeScreen(),
        QuranDetailsScreen.routeName: (context)=>QuranDetailsScreen(),
        HadeethDetailsScreen.routeName: (context)=>HadeethDetailsScreen(),
      } ,
    );
  }
}

