import 'package:flutter/material.dart';

class PageAya extends StatefulWidget {

  @override
  _PageAyaState createState() => _PageAyaState();
}

class _PageAyaState extends State<PageAya> {

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return    Positioned(
        top: height > 1000 ? 100 : height * 0.158,
        child: Container(
            height: height > 1000 ? 800 : height * 0.74,
            width: width > 760 ? 400 : width * 0.99,
      child: PageView(
        children: [
          Positioned(
            top: 110,
            bottom: 100,
            left: 70,
            child: Image.asset(
              'assest/Image-Sour/quranpage1.png',
            ),
          ),
          Positioned(
              top: 120,
              bottom: 100,
              left: 70,
              child: Image.asset(
                'assest/Image-Sour/quranpage2.png',              )),
          Positioned(
              top: 120,
              bottom: 100,
              left: 70,
              child: Image.asset(
                'assest/Image-Sour/quranpage3.png',              )),
          Positioned(
              top: 120,
              bottom: 100,
              left: 70,
              child: Image.asset(
                'assest/Image-Sour/quranpage4.png',              )),

          Positioned(
              top: 120,
              bottom: 100,
              left: 70,
              child: Image.asset(
                'assest/Image-Sour/quranpage5.png',              )),

        ],


        ))
    );
  }
}
