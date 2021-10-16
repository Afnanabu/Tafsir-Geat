import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';


class TranslationsSettingsDialog extends StatefulWidget {
  final String title;

  const TranslationsSettingsDialog({required this.title});

  @override
  _TranslationsSettingsDialogState createState() =>
      _TranslationsSettingsDialogState(this.title);
}

class _TranslationsSettingsDialogState
    extends State<TranslationsSettingsDialog> {
  final String title;

  int selectedLanguage = 1;
  int selectedTranslation = 1;

  List<Map<int, Map<String, List<String>>>> dummyTranslationsData = [
    {
      1: {
        'English': [

        ]
      }
    },
    {
      2: {
        'France': [

        ]
      }
    },
    {
      3: {
        'German': [

        ]
      },
      4: {
        'Italian': [

        ]
      },
      4: {
        'Spanish': [

        ]
      }
    },
  ];

  _TranslationsSettingsDialogState(this.title);

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
                  title,
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
                DropdownButton<int>(
                  value: selectedLanguage,
                  onChanged: (newSelectedLanguage) {
                    setState(() {
                      selectedLanguage = newSelectedLanguage as int;
                    });
                  },
                  hint: Text('إختر لغة'),
                  items: [
                    ...dummyTranslationsData
                        .map((languageItem) => DropdownMenuItem(
                      value: languageItem.keys.first,
                      child: Text(languageItem.values.first.keys.first),
                    ))
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