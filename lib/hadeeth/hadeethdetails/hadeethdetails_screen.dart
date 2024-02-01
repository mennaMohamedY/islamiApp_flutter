


import 'package:flutter/material.dart';
import 'package:practice_3/hadeeth/hadeethdetails/hadeethdataclass.dart';

import '../../home/theme.dart';

class HadeethDetailsScreen extends StatelessWidget {
  static const String routeName="HadeethDetailsScreen";

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadeethDetailsDC;
    return Stack(children: [
      Image(image: AssetImage("assets/images/background.png"),width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
      Scaffold(appBar: AppBar(title: Text("Islami")),
        body: Container(margin:EdgeInsets.symmetric(horizontal: 22,vertical: 42),padding: EdgeInsets.symmetric(vertical: 7,horizontal: 15),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), color: Color(
            0xbef8f8f8)),
          child: Column(children: [
            Text("${args.hadeethName}",style: IslamiTheme.textStyle25,),
            Container(margin: EdgeInsets.symmetric(horizontal: 42,vertical: 1),width: double.infinity,height: 2,color: IslamiTheme.primaryColor,),
            SizedBox(height: 15),
            Expanded(child: SingleChildScrollView(child: Text("${args.hadeethContent}",style: IslamiTheme.lightMode.textTheme.bodyMedium,)),)
          ],),),)
    ],);
  }
  // Text itemBuilder(BuildContext context,int position){
  //   return Text("$ar");
  // }
}
