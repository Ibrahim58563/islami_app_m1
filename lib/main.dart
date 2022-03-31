import 'package:flutter/material.dart';
import 'package:islami_app_m1/HomePage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        HomePage.routeName:(buildcontext)=> HomePage(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}
