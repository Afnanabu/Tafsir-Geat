import 'dart:ui';

import 'package:flutter/cupertino.dart';
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

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  ListTile(
                    title: Text(' إختيار القارئ'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => showDialog(
                        context: context, builder: (context) => ChooseReader()),
                  ),
                  ListTile(
                    title: Text(' تنزيل السور'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => DownloadAyatDialog()),
                  ),
                  ListTile(
                    title: Text(' تنزيل السور التي تحوي الآيات'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => DownloadSoura()),
                  ),
                  ListTile(
                    title: Text('اختيار التفسير'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => ChooseTafsirDialog()),
                  ),
                  ListTile(
                    title: Text('إعدادات التراجم'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => TranslateDialog()),
                  ),
                  ListTile(
                    title: Text('زمن توقف الشاشة'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => showDialog(
                        context: context, builder: (context) => ScreenTime()),
                  ),
                  ListTile(
                    title: Text('المساعدة'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  ListTile(
                    title: Text('انشر تؤجر '),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => showDialog(
                        context: context, builder: (context) => ShareDialog()),
                  ),
                  ListTile(
                    title: Text('نبذة عنا '),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => AboutUsDialog()),
                  ),
                  CheckboxListTile(
                    title: Text('تفعيل الإشعارات'),
                    onChanged: (newvalue) {
                      setState(() {
                        values = newvalue;
                      });
                    },
                    value: values,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}