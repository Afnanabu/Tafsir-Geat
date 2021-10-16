import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/pages/Ayat-Page.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/Button-Widgets/Button-Icon.dart';

class AyatPage extends StatefulWidget {
  @override
  _AyatPageState createState() => _AyatPageState();
}

class _AyatPageState extends State<AyatPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                width: width,
                height: height * 0.12,
                child: Image.asset(
                  'assest/Page-Image/Header.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ButtonPage(),
            Positioned(
              top: height * 0.1,
              child: Container(
                width: width * 0.97,
                height: height * 0.86,
                child: Image.asset(
                  'assest/Page-Image/QuranFramDesign.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            PageAya(),
            Positioned(
              top: height * 0.114,
              left: width * 0.66,
              child: Container(
                width: width * 0.15,
                height: height * 0.04,
                child: Image.asset(
                  'assest/Page-Image/Joza001.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: height * 0.114,
              left: width * 0.195,
              child: Container(
                width: width * 0.15,
                height: height * 0.04,
                child: Image.asset(
                  'assest/Page-Image/Sora2.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
