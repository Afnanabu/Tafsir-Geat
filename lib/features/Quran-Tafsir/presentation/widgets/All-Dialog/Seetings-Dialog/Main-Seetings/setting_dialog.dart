import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Sub-Seetings/about%20us-dialog.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Sub-Seetings/choose_reader_dialog.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Sub-Seetings/choose_tafsir_dialog.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Sub-Seetings/download_surah_containing_ayats_dialog.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Sub-Seetings/download_surah_dialog.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Sub-Seetings/screen_off_time_dialog.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Sub-Seetings/share-dialog.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Sub-Seetings/translat_settings_dialog.dart';

class SettingsDialog extends StatefulWidget {


  @override
  _SettingsDialogState createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {


  bool? values = false;
  List<Map<String ,dynamic>> settingDialogList = [
    {'إختيار القارئ':ChooseReader()},
    {'تنزيل السور':DownloadAyatDialog( )},
    {'تنزيل السور التي تحوي الآيات':DownloadSoura()},
    {'اختيار التفسير':ChooseTafsirDialog( )},
    {'إعدادات التراجم':TranslateDialog()},
    {'زمن توقف الشاشة':ScreenTime( )},
     {'المساعدة':null},
    {'نبذة عنّا':AboutUsDialog()},
    {'انشر تؤجر':ShareDialog()},
    {'تفعيل الإشعارات':''},
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
        title: Text(
          'الإعدادات',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        scrollable: true,
        content: Container(
          height: 400,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...settingDialogList.map((item) => Column(
                  children: [
                    if(item.keys.first == 'تفعيل الإشعارات')
                      ListTile(
                        title: Text('تفعيل الإشعارات'),
                        leading: Checkbox(
                          value: values,
                          onChanged: (newValue){
                            setState(() {
                              values = newValue;
                            });
                          },
                        ),
                      )
                    else
                      ListTile(
                        title: Text(item.keys.first),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: (){
                          Navigator.of(context).pop();
                          showDialog(context: context, builder:(ctx)=>item.values.first);
                        },
                      ),

                  ],
                )).toList(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}