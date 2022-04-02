import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_m1/settings/language_bottom_sheet.dart';
class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: (){

        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context)!.language),
              InkWell(
                onTap: (){
                  showLanguageBottomSheet();
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('English'),Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(AppLocalizations.of(context)!.theme),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Theme'),Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder: (buildContext){
      return LanguageBottomSheet();
    });
  }
}
