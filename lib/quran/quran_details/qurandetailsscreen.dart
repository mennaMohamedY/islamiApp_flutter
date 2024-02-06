

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_3/home/theme.dart';
import 'package:practice_3/providers/app_config_provider.dart';
import 'package:practice_3/quran/quran_details/qurandataclass.dart';
import 'package:provider/provider.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName="QuranDetailsScreen";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  late String surahfile;

  List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    var args=ModalRoute.of(context)?.settings.arguments as QuranDetailsDC;
    if(verses.isEmpty){
      readFromFiles(args.SurahIndex);
    }
    return Stack(children: [
      (provider.AppThemeMode==ThemeMode.dark)?Image(image: AssetImage("assets/images/bg.png"),width: double.infinity,height: double.infinity,fit: BoxFit.fill,):
      Image(image: AssetImage("assets/images/background.png"),width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
      Scaffold(appBar: AppBar(title: Text("Islami")),
      body: Container(margin:EdgeInsets.symmetric(horizontal: 22,vertical: 42),padding:EdgeInsets.symmetric(vertical: 12,horizontal: 15),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Theme.of(context).shadowColor),
      child: Column(children: [
        Row(mainAxisAlignment:MainAxisAlignment.center,children: [
          Text(" سوره  ${args.SurahName}",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).cardColor
          ),),
          TextButton(onPressed: (){}, child: ImageIcon(AssetImage("assets/images/icon_playsurah.png"),color: Theme.of(context).cardColor,))
        ],),
        Container(margin: EdgeInsets.symmetric(horizontal: 42,vertical: 1),width: double.infinity,height: 2,color: Theme.of(context).dividerColor,),
        SizedBox(height: 12,),
        //verses.isEmpty? CircularProgressIndicator():SizedBox(width: double.infinity,height: 250,child: ListView.builder(itemBuilder:itemBuilder ,itemCount: verses.length,),),
        verses.isEmpty? CircularProgressIndicator():Expanded(child: ListView.builder(itemBuilder:itemBuilder ,itemCount: verses.length,),),

      ],),),)
    ],);
  }
  Text itemBuilder(BuildContext context,int position){
    return Text("${verses[position]} (${position+1})", textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.bodyMedium?.copyWith(
      color: Theme.of(context).cardColor
    ),);
  }
  void readFromFiles(int index)async{
    surahfile= await rootBundle.loadString("assets/files/${index+1}.txt");
    var surahContent=surahfile.split("\n");
    verses=surahContent;
    for(int i=0; i<verses.length; i++){
      print(verses[i]);
    }
    setState(() {

    });
  }
}
