import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app_m1/HomePage.dart';
import 'package:islami_app_m1/providers/app_config_provider.dart';
import 'package:islami_app_m1/quran/SuraDetailsScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider(create: (BuildContext context) {
    return AppConfigProvider();
  },
  child: MyApp()));
}
class MyThemeData{
  static final primaryColor= Color.fromARGB(255, 183, 147, 95);
  static final selectedIconColor= Color.fromARGB(255, 0, 0, 0);
  static final unSelectedIconColor= Color.fromARGB(255, 255, 255, 255);

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      title: 'Islami',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.appLanguage),
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
