

import 'package:flutter/material.dart';
import 'package:practice_3/home/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:practice_3/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheetDialog extends StatefulWidget{
  @override
  State<ThemeBottomSheetDialog> createState() => _MYBottomSheetDialogState();
}

class _MYBottomSheetDialogState extends State<ThemeBottomSheetDialog> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(onTap: () =>{provider.ChangeAppTheme(ThemeMode.dark)} ,
          child: Container(margin: EdgeInsets.all(12),
          child: (provider.AppThemeMode== ThemeMode.dark)? SelectedWidget(AppLocalizations.of(context)!.dark): unSelectedWidget(AppLocalizations.of(context)!.dark),
      ),
        ),
        InkWell(onTap: ()=>{provider.ChangeAppTheme(ThemeMode.light)},
          child: Container(margin: EdgeInsets.all(12),
            child:
            (provider.AppThemeMode==ThemeMode.light)? SelectedWidget(AppLocalizations.of(context)!.light):
                unSelectedWidget(AppLocalizations.of(context)!.light)
          ),
        )],
    );
  }

  Widget SelectedWidget(String themeMode){
    return  Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
      Text(themeMode,style: TextStyle(color: Theme.of(context).dividerColor,fontSize: 25,fontWeight: FontWeight.w400),),
      Icon(Icons.check,color: Theme.of(context).dividerColor,)
    ],);
  }
  Widget unSelectedWidget(String themeMode){
    var provider=Provider.of<AppConfigProvider>(context);
    return Text(themeMode,style: TextStyle(color: (provider.AppThemeMode == ThemeMode.dark)? Colors.white: Colors.black,fontSize: 25,fontWeight: FontWeight.w400),);

  }


}