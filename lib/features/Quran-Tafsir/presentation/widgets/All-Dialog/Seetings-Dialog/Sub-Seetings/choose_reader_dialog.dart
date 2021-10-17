import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';

class ChooseReader extends StatefulWidget {
  const ChooseReader();

  @override
  _ChooseReaderState createState() => _ChooseReaderState();
}

class _ChooseReaderState extends State<ChooseReader> {
  _ChooseReaderState();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Container(
            width: double.infinity,
            height: 60,
            color: Colors.blueGrey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'اختيار القارئ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextButton.icon(
                  icon: Text('الإعدادات'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    showDialog(
                        context: context, builder: (_) => SettingsDialog());
                  },
                  label: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        titlePadding: EdgeInsets.all(0),
        scrollable: true,
        content: Container(
          height: 250,
          width: 250,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    ListTile(
                      title: Text('محمد صديق المنشاوي'),
                    ),
                    ListTile(
                      title: Text('محمود الحصري'),
                    ),
                    ListTile(
                      title: Text('عبدالباسط عبد الصمد'),
                    ),
                    ListTile(
                      title: Text('محمد الطبلاوي'),
                    ),
                    ListTile(
                      title: Text('محمد صديق المنشاوي'),
                    ),
                    ListTile(
                      title: Text('مصطفى اسماعيل'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
