import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';


class DownloadAyatDialog extends StatefulWidget {

  const DownloadAyatDialog(  ) ;

  @override
  _DownloadAyatDialogState createState() => _DownloadAyatDialogState( );
}

class _DownloadAyatDialogState extends State<DownloadAyatDialog> {
  List<String> listread = [
    'الفاتحة',
    'البقرة',
    'آل عمران',
    'النساء',
    'المائدة',
    'الأنعام',
    'الأعراف',
    'الأنفال',
  ];

  _DownloadAyatDialogState( );

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
        ),
        title: ClipRRect(
          borderRadius: BorderRadius.only(topLeft:Radius.circular(8),topRight: Radius.circular(8) ),
          child: Container(
            width: double.infinity,
            height: 60,
            color: Colors.blueGrey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'تنزيل السور ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextButton.icon(
                  icon:  Text('الإعدادات'),
                  onPressed: (){
                    Navigator.of(context).pop();
                    showDialog(context: context, builder: (_)=> SettingsDialog());
                  },
                  label: Icon(Icons.arrow_forward_ios,size: 15,),
                ),
              ],
            ),
          ),
        ),
        titlePadding: EdgeInsets.all(0),

        scrollable: true,
        content: Container(
          height: 400,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...listread.map((item) => Column(
                  children: [
                    ListTile(
                      title: Text(item),
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