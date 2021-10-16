import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';


class ChooseTafsirDialog extends StatefulWidget {
  final String title;

  const ChooseTafsirDialog({required this.title}) ;

  @override
  _ChooseTafsirDialogState createState() => _ChooseTafsirDialogState(this.title);
}

class _ChooseTafsirDialogState extends State<ChooseTafsirDialog> {
  final String title;

  int choosedTafsirIndex = 0;
  List<Map<String ,dynamic>> chooseTafsirDialogList = [
    {'إرشاد العقل السليم الى مزايا الكتاب':1},
    {'أضواء البيان في تفسير القرآن/الشنقيطي':2},
    {'أيسر التفاسير / أبو بكر الجزائري':3},
    {'أيسر التفاسير / د.أسعد حومد':4},
    {'إرشاد العقل السليم الى مزايا الكتاب':5},
    {'أضواء البيان في تفسير القرآن/الشنقيطي':6},
    {'أيسر التفاسير / أبو بكر الجزائري':7},
    {'ألبحر المحيط/ابو حيان':8},
    {'البحر المديد في تفسير القرآن المجيد/ابن عجمية':9},
    {'الجامع لاحكام القرآن/الثعباني':10},
    {'الدر المنثور في التفسير بالمأثور/السيوطي':11},
    {'الكشف والبيان/الثعلبي':12},


  ];

  _ChooseTafsirDialogState(this.title);

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
                  title,
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
                ...chooseTafsirDialogList.map((item) => Column(
                  children: [
                    ListTile(
                      title: Text(item.keys.first),
                      onTap: (){
                        setState(() {
                          choosedTafsirIndex = item.values.first;
                        });
                      },
                      trailing: choosedTafsirIndex == item.values.first?Image.asset('assest/Search-Image/Check_List.png'):null,
                    ),
                    Divider(
                      height: 5,
                      thickness: 1,

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