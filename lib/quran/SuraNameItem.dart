import 'package:flutter/material.dart';
import 'package:islami_app_m1/quran/SuraDetailsScreen.dart';

class SuraNameItem extends StatelessWidget {

  String suraName;
  int suraIndex;
  SuraNameItem(this.suraName,this.suraIndex);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
        arguments: SuraDetailsArgs(suraName, suraIndex));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${suraName}',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );;
  }
}
