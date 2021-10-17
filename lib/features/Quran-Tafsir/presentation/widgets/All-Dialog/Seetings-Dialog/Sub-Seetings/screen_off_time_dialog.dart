import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';


class ScreenOffTimeDialog extends StatefulWidget {

  const ScreenOffTimeDialog( ) ;

  @override
  _ScreenOffTimeDialogState createState() => _ScreenOffTimeDialogState( );
}

class _ScreenOffTimeDialogState extends State<ScreenOffTimeDialog> {

  int timeIndex = 0;
  int? screenTime;
  List<Map<String ,dynamic>> screentimeList = [
    {'5 دقائق':1},
    {'10 دقائق':2},
    {'15 دقائق':3},
    {'20 دقائق':4},
  ];

  _ScreenOffTimeDialogState( );

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        title: ClipRRect(
          borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10) ),
          child: Container(
            width: double.infinity,
            height: 60,
            color: Colors.blueGrey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'زمن توقف الشاشة',
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
          height: 250,
          width: 250,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...screentimeList.map((item) => Column(
                  children: [
                    ListTile(
                      title: Text(item.keys.first),
                      onTap: (){
                        setState(() {
                          timeIndex = item.values.first;
                        });
                      },
                      trailing: timeIndex == item.values.first?Image.asset('assest/Search-Image/Check_List.png'):null,
                    ),
                    Divider(
                      height: 5,
                      thickness: 1,
                      endIndent: 30,
                      indent: 30,
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