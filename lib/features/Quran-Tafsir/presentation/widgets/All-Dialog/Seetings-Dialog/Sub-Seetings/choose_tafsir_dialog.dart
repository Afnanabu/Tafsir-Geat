import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';


class ChooseTafsirDialog extends StatefulWidget {

  const ChooseTafsirDialog( ) ;

  @override
  _ChooseTafsirDialogState createState() => _ChooseTafsirDialogState( );
}

class _ChooseTafsirDialogState extends State<ChooseTafsirDialog> {

  int tafsirIndex = 0;
  List<dynamic> chooseTafsirList = [

    {'إرشاد العقل السليم الى مزايا الكتاب'},
    {'أضواء البيان في تفسير القرآن/الشنقيطي'},
    {'أيسر التفاسير / أبو بكر الجزائري'},
    {'ألبحر المحيط/ابو حيان'},
    {'البحر المديد في تفسير القرآن المجيد/ابن عجمية'},
    {'الجامع لاحكام القرآن/الثعباني'},
    {'الدر المنثور في التفسير بالمأثور/السيوطي'},
    {'الكشف والبيان/الثعلبي'},


  ];

  _ChooseTafsirDialogState( );

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
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
                  'اختيار التفسير',
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
                ...chooseTafsirList.map((item) => Column(
                  children: [
                    ListTile(
                      title: Text(item.keys.first),
                      onTap: (){

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