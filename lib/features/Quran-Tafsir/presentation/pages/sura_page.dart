import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/Ayat-Page.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/button_controls.dart';



class AyatPage extends StatefulWidget {
  @override
  _AyatPageState createState() => _AyatPageState();
}

class _AyatPageState extends State<AyatPage> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assest/Page-Image/QuranPageBackground.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                width: size.width,
                height: size.height * 0.12,
                child: Image.asset(
                  'assest/Page-Image/Header.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ButtonPage(),
            Positioned(
              top: size.height * 0.1,
              child: Container(
                width: size.width * 0.97,
                height: size.height * 0.86,
                child: Image.asset(
                  'assest/Page-Image/QuranFramDesign.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),

            PageAya(),
            Positioned(
              top: size.height * 0.114,
              left:size.width * 0.66,
              child: Container(
                width: size.width * 0.15,
                height: size.height * 0.04,
                child: Image.asset('assest/Page-Image/Joza001.png', fit: BoxFit.fill,),),
            ),
            Positioned(
              top: size.height * 0.114,
              left:size.width * 0.195,
              child: Container(
                width: size.width * 0.15,
                height: size.height * 0.04,
                child: Image.asset('assest/Page-Image/Sora2.png', fit: BoxFit.fill,),),
            ),


          ],
        ),
      ),
    );
  }
}
