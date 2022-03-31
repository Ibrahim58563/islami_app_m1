import 'package:flutter/material.dart';
import 'package:islami_app_m1/HomePage.dart';
import 'package:islami_app_m1/quran/SuraDetailsScreen.dart';

void main() {
  runApp( MyApp());
}
class MyThemeData{
  static final primaryColor= Color.fromARGB(255, 183, 147, 95);
  static final selectedIconColor= Color.fromARGB(255, 0, 0, 0);
  static final unSelectedIconColor= Color.fromARGB(255, 255, 255, 255);

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black)
        ),

        primaryColor:MyThemeData.primaryColor,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: MyThemeData.primaryColor
        )
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName:(buildcontext)=> HomePage(),
        SuraDetailsScreen.routeName:(buildContext)=>SuraDetailsScreen(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}
