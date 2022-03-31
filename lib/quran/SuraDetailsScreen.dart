import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_m1/main.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List <String> verses = [];

  @override
  Widget build(BuildContext context) {
    // what is that?
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    loadSuraDetails(args.suraIndex);
    return Stack(

      children:[

        Image.asset('images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,),

        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text('${args.suraName}',style: TextStyle(
              color: MyThemeData.selectedIconColor,

            ),),
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child:
              verses.isEmpty? Center(child: CircularProgressIndicator()):
              ListView.separated(itemBuilder: (buildContext,index){
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(verses[index]+'(${index+1})',
                    style: TextStyle(
                      fontSize: 18
                    ),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,),
                  ),
                );
              },
              itemCount: verses.length,
              separatorBuilder: (buildContext,index){
                return Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                );
              }),

            ),
          ),
        ),

      ],

    );
  }

  Future<void> loadSuraDetails(int index)async{
    String fileContent = await rootBundle.loadString('assets/${index+1}.txt');
   // print(fileContent);
    List <String> ayat = fileContent.split('\n');
    setState(() {
      this.verses = ayat;

    });
    // for(int i = 0;i<verses.length;i++){
    //   print(verses[i]);
    // }
}
}
class SuraDetailsArgs{
  String suraName;
  int suraIndex;
  SuraDetailsArgs(this.suraName,this.suraIndex);
}
