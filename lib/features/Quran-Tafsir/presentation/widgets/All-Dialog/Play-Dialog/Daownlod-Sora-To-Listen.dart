import 'dart:ui';

import 'package:flutter/material.dart';


class DownloadSurahToListen extends StatefulWidget {

  const DownloadSurahToListen() ;

  @override
  _DownloadSurahToListenState createState() => _DownloadSurahToListenState();
}

class _DownloadSurahToListenState extends State<DownloadSurahToListen> {



  List<String> chooseReaderDialogList = [
    'محدمد صديق المنشاوي',
    'محمود الحصري',
    'عبد الباسط عبد الصمد',
    'محمد الطبلاوي',
    'مصطفى اسماعيل',
    'ماهر المعيقلي',
    'مشاري العفاسي',
    'محمدجبريل',
    'محمدايوب',
    'ابو بكر الشاطري ',
    'جمال شاكر ',

  ];


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
            child:
                Text(
              'اختيار القارىْ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                 //Text('اختيار القارىْ',style: TextStyle(fontSize:15,color: Colors.black),),
          ),
        ),

        scrollable: true,
        content: Container(
          height: 400,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...chooseReaderDialogList.map((item) => Column(
                  children: [
                    ListTile(
                      title: Text(item),
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