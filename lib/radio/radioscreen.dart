

import 'package:flutter/material.dart';

import '../home/theme.dart';

class RadioScreen extends StatelessWidget {
  
  static const String routeName="RadioScreen";

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
      SizedBox(height: 116),
      Image(image: AssetImage("assets/images/radio_image.png")),
      SizedBox(height: 26),
      Text("اذاعه القران الكريم",style: IslamiTheme.textStyle25,),
      SizedBox(height: 35),
      Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
        TextButton(onPressed: (){}, child: ImageIcon(AssetImage("assets/images/icon_previous.png"),color: IslamiTheme.primaryColor,)),
        TextButton(onPressed: (){}, child: ImageIcon(AssetImage("assets/images/icon_play.png"),color: IslamiTheme.primaryColor,)),
        TextButton(onPressed: (){}, child: ImageIcon(AssetImage("assets/images/icon_next.png"),color: IslamiTheme.primaryColor,))

      ],)




    ],);
  }
}
