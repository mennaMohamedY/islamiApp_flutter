

import 'package:flutter/material.dart';
import 'package:practice_3/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../home/theme.dart';
import 'dart:math' as math;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class TasbehScreen extends StatefulWidget {
  
  static const String routeName="TasbehScreen";

  TasbehScreen(){
  }

  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {
  var counter=0;
  var angle=0.0;
  var degree=0.0;


  var index=0;
  List<String> tasabeh=["سبحان الله","الحمد لله","لا اله الا الله","الله اكبر","لا حول ولا قوه الا بالله "];


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center ,children: [
        Stack(alignment: Alignment.topCenter,children: [

          Container(margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.10)
            ,child:Transform.rotate(
            angle: angle,
            child:InkWell(overlayColor: MaterialStatePropertyAll(Colors.transparent) ,onTap:(){
              counter +=1;
              if(counter ==34){
                index+=1;
                counter =1;
              }
              if(index> tasabeh.length-1){
                index=0;
              }
              setState(() {
                degree +=10.909;
                angle = degree* math.pi / 180;
              });
            } ,
                child:(provider.AppThemeMode==ThemeMode.dark)?Image(image: AssetImage("assets/images/sebha_body_dark.png")) :
                Image(image: AssetImage("assets/images/sebha_body.png"))),
          ),),
          Container(margin:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.09),
            child: (provider.AppThemeMode ==ThemeMode.dark)?Image(image: AssetImage("assets/images/sebha_head_dark.png")) :
          Image(image: AssetImage("assets/images/sebha_head.png")),),

        ],),
        SizedBox(height: 12)
        ,Text(AppLocalizations.of(context)!.tasbeh_num,style: Theme.of(context).textTheme.bodyMedium,),
        SizedBox(height: 5),
        Container(padding:EdgeInsets.all(12),decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),color: Theme.of(context).primaryColor ,
         ),child: Text("$counter",style: Theme.of(context).textTheme.bodyLarge),),
        SizedBox(height: 12),
        Container(padding:EdgeInsets.symmetric(vertical: 5,horizontal: 13),decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(27)),color: Theme.of(context).dividerColor,
        ),child: Text("${tasabeh[index]}",style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).hintColor,fontSize: 25)),)



      ],),
    );
  }
}
