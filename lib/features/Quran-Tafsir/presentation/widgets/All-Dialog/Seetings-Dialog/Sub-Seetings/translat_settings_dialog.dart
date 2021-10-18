import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';

class TranslateDialog extends StatefulWidget {
  const TranslateDialog({Key? key}) : super(key: key);

  @override
  _TranslateDialogState createState() => _TranslateDialogState();
}

class _TranslateDialogState extends State<TranslateDialog> {
  String value='';

  List<DropdownMenuItem<String>>menuitem= [];
 bool disabledropdown = true;
  final english={
    '1':'Marmaduke Pickthall',
    '2':'Abdullah yousef Ali',
    '3':'Arthur J. Arberry',
    '4':'Martin Lings ',
    '5':'Mufti Muhammad Tagi ',
    '6':'Royal Aal al-Bayat Institute ',
    '7':'Muhammad Tahir-ul-Qadri ',
  };
  final french={
    '1':'Jean-Louis Michon',
    '2':'Muhammad Hamidullah',
    };
final kurdish={
    '1':'Burhan Muhammad-Amin',
     };
   void popEnglish(){
    for(String key in english.keys){
      menuitem.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              '${english[key]}'
          ),
        ),
        value: english[key],
      ));
    }
  }
 void popFrench(){
   for(String key in french.keys){
     menuitem.add(DropdownMenuItem<String>(
       child : Center(
         child: Text(
             '${ french[key]}'
         ),
       ),
       value: french[key],
     ));
   }
 }void popKurdish(){
   for(String key in kurdish.keys){
     menuitem.add(DropdownMenuItem<String>(
       child : Center(
         child: Text(
             '${ kurdish[key]}'
         ),
       ),
       value: kurdish[key],
     ));
   }
 }
  void selected(newValue){
    if(newValue=='English'){
      menuitem=[];
      popEnglish();
    }else if (newValue=='French'){
      menuitem=[];

      popFrench();
    }else if (newValue=='Kurdish'){
      menuitem=[];

      popKurdish();
    }
    setState(() {
      value=newValue;
      disabledropdown=false;
     });
  }
void secondselected(newValue){
setState(() {
  value=newValue;
});
}
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
                  'إعدادات التراجم',
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DropdownButton(
                  items: [
                    DropdownMenuItem(
                        value: 'English',
                        child: Center(
                          child: Text('English'),
                        )),
                    DropdownMenuItem(
                        value: 'French',
                        child: Center(
                          child: Text('French'),
                        )),
                    DropdownMenuItem(
                        value: 'Kurdish',
                        child: Center(
                          child: Text('Kurdish'),
                        )),
                  ],
                  onChanged: (newValue)=>selected(newValue),

                ),

                DropdownButton<String>(
                  items: menuitem,
                  onChanged: (newValue)=>secondselected(newValue),
                  hint: Text('Select your Tafsir'),
                    disabledHint: Text(
                      'First Selected  tour Field'
                    ),
                ),




                Text(
                  '$value',
                  style: TextStyle(fontSize: 20),)


              ],
            ),
          ),
        ),
      ),
    );}}