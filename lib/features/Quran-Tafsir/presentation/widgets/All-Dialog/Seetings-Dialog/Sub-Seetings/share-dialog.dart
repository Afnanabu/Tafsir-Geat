import 'dart:ui';

import 'package:flutter/material.dart';

class ShareDialog extends StatefulWidget {
  const ShareDialog();

  @override
  _ShareDialogState createState() => _ShareDialogState();
}

class _ShareDialogState extends State<ShareDialog> {
  _ShareDialogState();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: ClipRRect(

            child: Container(
              width: double.infinity,
              height: 30,
              color: Colors.grey,
              child: Text(
                'انشر تؤجر  ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            )),
        content: Container(
            height: 300,
            width: 300,
            child: SingleChildScrollView(
                child: Column(
              children: [
                Image.asset('assest/Page-Image/godImage.jpg'),
                Text(
                    ' اذا اعجبك تطبيق التفاسير العظيمة , فنرجو ان تساهم في دعم هذا الوقف الخيري من خلال نشره عبر وسائل التواصل الاجتماعي , انشر ولك الاجر ان شاء الله '),
                Container(
                    height: 30,
                    width: 200,
                    color: Colors.blue[900],
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height:25,
                              child: Image.asset('assest/Social-Logo/Logo_facebook.png')),
                          Text('انشر على Facebook',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.white)),
                        ])),
                SizedBox(
                  height: 3,
                ),
                Container(


                    height: 30,
                    width: 200,
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(                            height:25,

                            child: Image.asset('assest/Social-Logo/Logo_twitter.png')),
                        Text('انشر على Twitter',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
                SizedBox(
                  height: 3,
                ),
                Container(
                    height: 30,
                    width: 200,
                    color: Colors.blue[900],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height:25,

                            child: Image.asset('assest/Social-Logo/logo_linkedin.png')),
                        Text('انشر على LinkedIn',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
                SizedBox(
                  height: 3,
                ),
                Container(
                    height: 30,
                    width: 200,
                    color: Colors.red[900],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(                            height:25,

                            child: Image.asset('assest/Social-Logo/logo_google.png')),
                        Text('انشر على Google',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
                SizedBox(
                  height: 3,
                ),
                Container(
                    height: 30,
                    width: 200,
                    color: Colors.green[500],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height:25,

                            child: Image.asset('assest/Social-Logo/logo_whatsapp.png')),
                        Text('انشر على WhatsApp',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white)),
                      ],
                    )),
              ],
            ))),
      ),
    );
  }
}
