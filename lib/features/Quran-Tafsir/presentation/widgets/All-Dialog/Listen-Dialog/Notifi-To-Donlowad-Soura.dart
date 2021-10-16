import 'package:flutter/material.dart';

NotifiToDownlodSora(BuildContext context) {
  Widget pupButton = TextButton(
    child:
    Text("لا", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    onPressed: () => Navigator.pop(context),
  );
  Widget acceptButton = TextButton(
    child: Text(
      "نعم",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
    onPressed: () => Navigator.pop(context),
  );

  AlertDialog alert = AlertDialog(
    title: Row(
      children: [
        Text(
          "!تنبيه",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),


      ],
    ),
    content: Text(
      "لم يتم تنزيل السور المراد الاستماع الى آياتها مسبقا .هل تريد تنزيل السور ؟",
      textAlign: TextAlign.right,
    ),
    actions: [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [pupButton, acceptButton],
          )
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
