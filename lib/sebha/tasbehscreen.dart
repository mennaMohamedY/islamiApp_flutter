

import 'package:flutter/material.dart';

import '../home/theme.dart';
import 'dart:math' as math;


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
                child: Image(image: AssetImage("assets/images/sebha_body.png"))),
          ),),
          Container(margin:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.09),child: Image(image: AssetImage("assets/images/sebha_head.png")),),

        ],),
        SizedBox(height: 12)
        ,Text("عدد التسبيحات",style: IslamiTheme.textStyle25,),
        SizedBox(height: 5),
        Container(padding:EdgeInsets.all(12),decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),color: Color(0xffC8B396) ,
         ),child: Text("$counter",style: IslamiTheme.textStyle25),),
        SizedBox(height: 12),
        Container(padding:EdgeInsets.symmetric(vertical: 5,horizontal: 13),decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(27)),color: IslamiTheme.primaryColor,
        ),child: Text("${tasabeh[index]}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25)),)



      ],),
    );
  }
}
