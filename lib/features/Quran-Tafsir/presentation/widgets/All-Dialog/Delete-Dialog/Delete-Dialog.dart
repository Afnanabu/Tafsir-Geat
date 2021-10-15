import 'package:flutter/material.dart';

deleteAlert(BuildContext context) {
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
          Spacer(),
          InkWell(
            child:Icon(Icons.warning,color: Colors.grey,
            ),
          ),


      ],
    ),
    content: Text(
      " هل تريد مسح جميع العلامات ؟",
      textAlign: TextAlign.right,
    ),
    actions: [
      Column(
        children: [
          Divider(color: Colors.black),
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
