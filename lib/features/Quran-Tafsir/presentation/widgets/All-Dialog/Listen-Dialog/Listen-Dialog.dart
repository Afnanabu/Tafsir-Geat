
import 'package:flutter/material.dart';
listenDialog(BuildContext context) {

  List<String> listeningList = [
    'النازعات',
    'استماع للصفحة كاملة',
    'استماع للحزب',
    'استماع للجزء'
  ];
  String? listeningChoice;
  bool repeatCheck = false;
  bool currentCheck = false;
   Widget cancelButton = MaterialButton(
      textColor: Colors.white,
      color: Colors.blue,
      child: Text("إلغاء"),
      onPressed: () => Navigator.pop(context));
  Widget continueButton = MaterialButton(
      textColor: Colors.white,
      color: Colors.blue,
      child: Text("موافق"),
      onPressed: () => Navigator.pop(context));
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "استماع",
      style: TextStyle(color: Colors.black),
      textAlign: TextAlign.center,
    ),
    content: StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return SingleChildScrollView(
          child: Column(children: [
            Text('الرجاء اختيار المادة المراد الاستماع لتلاوتها',
                textAlign: TextAlign.right),
            Divider(color: Colors.grey),
            ...listeningList.map((listeningItem) {
              return Column(
                children: [
                  RadioListTile(
                    title: Text(listeningItem, textAlign: TextAlign.right, style:
                    TextStyle(fontSize: 20, color: Colors.black),),
                    subtitle: Divider(color: Colors.grey[500]),
                    activeColor: Colors.blue,
                    value: listeningList.indexOf(listeningItem),
                    groupValue: listeningChoice,
                    onChanged: (value) {
                      setState(() {
                        listeningChoice = listeningList[value as int];
                      });
                     },
                  ),
                ],
              );
            }).toList(),
            CheckboxListTile(
              title: Text('تكرار الاستماع', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold), textAlign: TextAlign.right,),
              checkColor: Colors.white,
              value: repeatCheck,
              onChanged: (bool? value) {
                setState(() {
                  repeatCheck = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('لاستماع من الصفحة الحالية', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),textAlign: TextAlign.right),
              checkColor: Colors.white,
              value: currentCheck,
              onChanged: (bool? value) {
                setState(() {
                  currentCheck = value!;
                });
              },
            )
          ]),
        );
      },
    ),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          cancelButton,
          continueButton,
        ],
      )
    ],
  );

   showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
