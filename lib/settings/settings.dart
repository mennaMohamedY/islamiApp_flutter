

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:practice_3/home/theme.dart';
import 'package:practice_3/providers/app_config_provider.dart';
import 'package:practice_3/settings/bottomsheetdialog.dart';
import 'package:practice_3/settings/themebottomsheetdialog.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget{
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return Column(crossAxisAlignment:CrossAxisAlignment.stretch,children: [
      SizedBox(height: 16,),
      Container(
        margin: EdgeInsets.only(top: 22,left: 12,right: 12,bottom: 12),
        child: Text(AppLocalizations.of(context)!.language,
    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.bold,

    )),
      ),
      InkWell(
        onTap: OnLanguageClickListener
       ,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: IslamiTheme.primaryColor,),
          child:Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
            Text((provider.AppLanguage== 'en')? "English":"العربيه",style: Theme.of(context).textTheme.bodyMedium,),
            Icon(Icons.arrow_drop_down,color: Colors.white,)
          ],),),
      ),
      SizedBox(height: 3,),
      Container(
        margin: EdgeInsets.only(top: 22,left: 12,right: 12,bottom: 12),
        child: Text(AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,

            )),
      ),
      InkWell(
        onTap: OnThemeModeClickListener
        ,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: IslamiTheme.primaryColor,),
          child:Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
            Text((provider.AppThemeMode== ThemeMode.dark)? AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light,style: Theme.of(context).textTheme.bodyMedium,),
            Icon(Icons.arrow_drop_down,color: Colors.white,)
          ],),),
      )

    ],);

  }


  OnLanguageClickListener() {
    showModalBottomSheet(context: context, builder:(context){
     return MYBottomSheetDialog();
   },shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),backgroundColor: Theme.of(context).shadowColor,);
  }
  
  OnThemeModeClickListener(){
    showModalBottomSheet(context: context, builder: (context){
      return ThemeBottomSheetDialog();
    },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)) ,backgroundColor:  Theme.of(context).shadowColor);
  }
}

