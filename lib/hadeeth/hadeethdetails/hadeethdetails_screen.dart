


import 'package:flutter/material.dart';
import 'package:practice_3/hadeeth/hadeethdetails/hadeethdataclass.dart';
import 'package:practice_3/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../home/theme.dart';

class HadeethDetailsScreen extends StatelessWidget {
  static const String routeName="HadeethDetailsScreen";


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    var args=ModalRoute.of(context)?.settings.arguments as HadeethDetailsDC;
    return Stack(children: [
      (provider.AppThemeMode==ThemeMode.dark)? Image(image: AssetImage("assets/images/bg.png"),width: double.infinity,height: double.infinity,fit: BoxFit.fill,):
      Image(image: AssetImage("assets/images/background.png"),width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
      Scaffold(appBar: AppBar(title: Text("Islami")),
        body: Container(margin:EdgeInsets.symmetric(horizontal: 22,vertical: 42),padding: EdgeInsets.symmetric(vertical: 7,horizontal: 15),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Theme.of(context).shadowColor),
          child: Column(children: [
            Text("${args.hadeethName}",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).cardColor
            ),),
            Container(margin: EdgeInsets.symmetric(horizontal: 42,vertical: 1),width: double.infinity,height: 2,color: Theme.of(context).dividerColor,),
            SizedBox(height: 15),
            Expanded(child: SingleChildScrollView(child: Text("${args.hadeethContent}",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).cardColor
            ))),)
          ],),),)
    ],);
  }
  // Text itemBuilder(BuildContext context,int position){
  //   return Text("$ar");
  // }
}
