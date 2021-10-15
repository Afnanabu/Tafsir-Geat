import 'dart:ui';

import 'package:flutter/material.dart';


class ShareDialog extends StatefulWidget {

  const ShareDialog( ) ;

  @override
  _ShareDialogState createState() => _ShareDialogState( );
}

class _ShareDialogState extends State<ShareDialog> {

  _ShareDialogState( );

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
                  'انشر تؤجر  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
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
                Image.asset('assest/Page-Image/godImage.jpg'),
                Text(' اذا اعجبك تطبيق التفاسير العظيمة , فنرجو ان تساهم في دعم هذا الوقف الخيري من خلال نشره عبر وسائل التواصل الاجتماعي , انشر ولك الاجر ان شاء الله ')
               ],
            ),
          ),
        ),
      ),
    );
  }
}