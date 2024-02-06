

import 'package:flutter/material.dart';

import '../home/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioScreen extends StatelessWidget {
  
  static const String routeName="RadioScreen";

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
      SizedBox(height: 116),
      Image(image: AssetImage("assets/images/radio_image.png")),
      SizedBox(height: 26),
      Text(AppLocalizations.of(context)!.quran_radio,style: Theme.of(context).textTheme.bodyLarge,),
      SizedBox(height: 35),
      Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
        TextButton(onPressed: (){}, child: ImageIcon(AssetImage("assets/images/icon_previous.png"),color: Theme.of(context).dividerColor,)),
        TextButton(onPressed: (){}, child: ImageIcon(AssetImage("assets/images/icon_play.png"),color: Theme.of(context).dividerColor,)),
        TextButton(onPressed: (){}, child: ImageIcon(AssetImage("assets/images/icon_next.png"),color: Theme.of(context).dividerColor,))

      ],)




    ],);
  }
}
