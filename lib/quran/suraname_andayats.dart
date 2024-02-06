


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_3/home/theme.dart';
import 'package:practice_3/quran/quran_details/qurandataclass.dart';
import 'package:practice_3/quran/quran_details/qurandetailsscreen.dart';

class SuraNameAndAyaNum extends StatelessWidget {
  String suraName;
  int surahNum;
  SuraNameAndAyaNum({required this.suraName,required this.surahNum});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(onPressed: (){
          Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments: QuranDetailsDC(SurahName: suraName, SurahIndex: surahNum));
        }, child:
        Text("$suraName",style: Theme.of(context).textTheme.bodyMedium)),
        TextButton(onPressed: (){}, child: Text("$surahNum",style: Theme.of(context).textTheme.bodyMedium))
      ],);
  }


}
