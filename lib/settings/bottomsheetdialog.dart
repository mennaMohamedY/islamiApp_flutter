

import 'package:flutter/material.dart';
import 'package:practice_3/home/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:practice_3/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class MYBottomSheetDialog extends StatefulWidget{
  @override
  State<MYBottomSheetDialog> createState() => _MYBottomSheetDialogState();
}

class _MYBottomSheetDialogState extends State<MYBottomSheetDialog> {

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(onTap: () =>{provider.ChangeAppLanguage('en')} ,
          child: Container(margin: EdgeInsets.all(12),
          child: (provider.AppLanguage=='en')? SelectedWidget(AppLocalizations.of(context)!.english): unSelectedWidget(AppLocalizations.of(context)!.english),
      ),
        ),
        InkWell(onTap: ()=>{provider.ChangeAppLanguage('ar')},
          child: Container(margin: EdgeInsets.all(12),
            child:
            (provider.AppLanguage=='ar')? SelectedWidget(AppLocalizations.of(context)!.arabic):
                unSelectedWidget(AppLocalizations.of(context)!.arabic)
          ),
        )],
    );
  }

  Widget SelectedWidget(String lang){
    var provider=Provider.of<AppConfigProvider>(context);

    return  Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
      Text(lang,style: TextStyle(color: Theme.of(context).dividerColor,fontSize: 25,fontWeight: FontWeight.w400),),
      Icon(Icons.check,color: Theme.of(context).dividerColor)
    ],);
  }
  Widget unSelectedWidget(String lang){
    var provider=Provider.of<AppConfigProvider>(context);

    return Text(lang,style: TextStyle(color: (provider.AppThemeMode == ThemeMode.dark)? Colors.white:Colors.black,fontSize: 25,fontWeight: FontWeight.w400),);

  }


}