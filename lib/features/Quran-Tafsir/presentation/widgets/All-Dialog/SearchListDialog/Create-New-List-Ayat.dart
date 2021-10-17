
import 'package:flutter/material.dart';
makeNewListAyat(BuildContext context) {
  Widget cancelButton = TextButton(
    child:
    Text("الغاء", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    onPressed: () => Navigator.pop(context),
  );
  Widget continueButton = TextButton(
      child: Text(
        "حفظ",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      onPressed: () =>null);

  AlertDialog alert = AlertDialog(
    title: Container(
      color: Colors.grey,
      width: 100,
      height: 30,
      child: Text(
        "قائمة البحث",
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.center,
      ),
    ),
    content: Container(
    height: 80,
      child: Column(

        children: [
          Text(
            "اسم القائمة",
            textAlign: TextAlign.right,
          ),
          TextField()
        ],
      ),
    ),


    actions: [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [cancelButton, continueButton],
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
