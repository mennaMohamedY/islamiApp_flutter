
import 'package:flutter/material.dart';
import 'package:practice_3/hadeeth/hadeethdetails/hadeethdataclass.dart';
import 'package:practice_3/hadeeth/hadeethdetails/hadeethdetails_screen.dart';
import 'package:practice_3/home/theme.dart';

class HadeethNum extends StatelessWidget {
  HadeethDetailsDC hadeethDetails;
  HadeethNum({required this.hadeethDetails});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment:MainAxisAlignment.center,children: [
    TextButton(onPressed: (){
      Navigator.pushNamed(context, HadeethDetailsScreen.routeName,arguments: hadeethDetails);
    }, child:  Text(hadeethDetails.hadeethName,style: Theme.of(context).textTheme.bodyMedium,))],);
  }
}
