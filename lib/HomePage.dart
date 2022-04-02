import 'package:flutter/material.dart';
import 'package:islami_app_m1/hadith/hadithTab.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app_m1/main.dart';
import 'package:islami_app_m1/quran/quranTab.dart';
import 'package:islami_app_m1/radio/radioTab.dart';
import 'package:islami_app_m1/sebha/sebhaTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_m1/settings/settings_tab.dart';
class HomePage extends StatefulWidget
{
 static const String routeName = "Home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(

      children:[

        Image.asset('images/background.png',
        width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,),

        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar:
          Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.primaryColor
            ),

          child:BottomNavigationBar(
            onTap: (index){
              // most of times i get confiscated with the arrange of equal
              setState(() {
                currentPage = index;

              });
            },
            selectedItemColor: MyThemeData.selectedIconColor,
            unselectedItemColor: MyThemeData.unSelectedIconColor,
            currentIndex: currentPage,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.radio,size: 30,),label:AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(icon: Image.asset('images/book.png',width: 30,),label: AppLocalizations.of(context)!.hadith),
              BottomNavigationBarItem(icon: Image.asset('images/sebha.png',width: 30),label: AppLocalizations.of(context)!.tasbeh),
              BottomNavigationBarItem(icon: Image.asset('images/quran.png',width: 30),label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(icon: Icon(Icons.settings,size: 30,),label:AppLocalizations.of(context)!.settings),

            ],),
          ),
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.app_title,style: TextStyle(
              color: MyThemeData.selectedIconColor,

            ),),
            backgroundColor: Colors.transparent,
          ),
          body: views[currentPage],
        ),
      ],

    );
  }
  List <Widget> views = [
    RadioTab(),
    HadithTab(),
    SebhaTab(),
    QuranTab(),
    SettingsTab(),

  ];
}
