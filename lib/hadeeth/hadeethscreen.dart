

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_3/hadeeth/hadeethdetails/hadeethdataclass.dart';

import '../home/theme.dart';
import 'hadeethnum.dart';

class HadeethScreen extends StatefulWidget {
  
  static const String routeName="HadeethScreen";


  @override
  State<HadeethScreen> createState() => _HadeethScreenState();
}

class _HadeethScreenState extends State<HadeethScreen> {
  List<String> ahadeeth=[];


  List<String> ahadethTitleList=[];
  List<String> hadeethContent=[];

  @override
  Widget build(BuildContext context) {
    if(ahadethTitleList.isEmpty){
      readFromFiles();
    }
    return Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
      Image(image: AssetImage("assets/images/ahadeth_header_image.png")),
      SizedBox(height: 12),
      Container(width: double.infinity,height: 2,color: IslamiTheme.primaryColor, ),
      SizedBox(height: 5)
      ,Text("ahadeeth",style: IslamiTheme.textStyle25,),
      SizedBox(height: 5)
      ,Container(width: double.infinity,height: 2,color: IslamiTheme.primaryColor, ),
      SizedBox(height: 5),
      ahadethTitleList.isEmpty? CircularProgressIndicator():
      Expanded(child:
      ListView.builder(
        itemBuilder:itemBuilder ,itemCount: ahadethTitleList.length,
      )
      ),


    ],);

  }

  HadeethNum itemBuilder(BuildContext context,int position){
    return HadeethNum(hadeethDetails: HadeethDetailsDC(hadeethName: ahadethTitleList[position],hadeethContent: hadeethContent[position]));
  }

  void initAhadeeth(){
    for(int i=0; i<50; i++){
      ahadeeth.add(" الحديث  ${i+1}");
    }
  }

  void readFromFiles()async{
    String ahadeth=await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadethList=ahadeth.split("#\r\n");

    for(int i=0;i<ahadethList.length;i++){
      var hadeethLines=ahadethList[i].split("\n");
       var title=hadeethLines[0];
       print(title);
       ahadethTitleList.add(title);
       hadeethLines.removeAt(0);
       var hadeeth=hadeethLines.toString();
       hadeethContent.add(hadeeth);
     }
    setState(() {

    });


  }
}
