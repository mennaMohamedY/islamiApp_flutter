

import 'package:flutter/material.dart';
import 'package:practice_3/consts.dart';
import 'package:practice_3/home/theme.dart';
import 'package:practice_3/quran/suraname_andayats.dart';

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
      Container(width: double.infinity,height: 2,color: IslamiTheme.primaryColor, ),
    SizedBox(height: 5)
    ,Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
        Text("surah's name",style: IslamiTheme.textStyle25,),
    Container(width: 2,height: 32,color: IslamiTheme.primaryColor, ),
    Text("ayah's num",style: IslamiTheme.textStyle25,)
      ],),
      SizedBox(height: 5)
      ,Container(width: double.infinity,height: 2,color: IslamiTheme.primaryColor, ),
      SizedBox(height: 5),
      SizedBox(width: double.infinity,height: 315,child:
          ListView.builder(
            itemBuilder:itemBuilder ,itemCount: quranSuras.length,
          )
      ),


    ],);
  }

  SuraNameAndAyaNum itemBuilder(BuildContext context,int position){
    return SuraNameAndAyaNum(suraName: quranSuras[position], surahNum: position);
  }

  void initQuranSuras(){
    for(int i=0; i<Consts.QuranSurahs.length; i++){
      quranSuras.add("${Consts.QuranSurahs[i]}");
    }
  }

}
