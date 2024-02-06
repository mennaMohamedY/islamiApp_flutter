

import 'package:flutter/material.dart';
import 'package:practice_3/consts.dart';
import 'package:practice_3/home/theme.dart';
import 'package:practice_3/quran/suraname_andayats.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranScreen extends StatelessWidget {

  static const String routeName="QuranScreen";
  List<String> quranSuras=[];
  QuranScreen(){
    initQuranSuras();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
      Image(image: AssetImage("assets/images/quran_header_image.png")),
      SizedBox(height: 12),
      Divider(color: Theme.of(context).dividerColor,thickness: 2,),
    SizedBox(height: 5)
    ,Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
        Text(AppLocalizations.of(context)!.surah_name,style: Theme.of(context).textTheme.bodyMedium,),
    Container(width: 2,height: 32,color: IslamiTheme.primaryColor, ),
    Text(AppLocalizations.of(context)!.surah_num,style: Theme.of(context).textTheme.bodyMedium,)
      ],),
      SizedBox(height: 5)
      ,//Container(width: double.infinity,height: 2,color: IslamiTheme.primaryColor, ),
      Divider(color: Theme.of(context).dividerColor,thickness: 2,),
      SizedBox(height: 5),
      SizedBox(width: double.infinity,height: 315,child:
          ListView.builder(
            itemBuilder:itemBuilder ,itemCount: quranSuras.length,
          )
      ),


    ],);
  }

  SuraNameAndAyaNum itemBuilder(BuildContext context,int position){
    return SuraNameAndAyaNum(suraName: quranSuras[position], surahNum: position+1);
  }

  void initQuranSuras(){
    for(int i=0; i<Consts.QuranSurahs.length; i++){
      quranSuras.add("${Consts.QuranSurahs[i]}");
    }
  }

}
