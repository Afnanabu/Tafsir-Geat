import 'package:flutter/material.dart';

class PageAya extends StatefulWidget {

  @override
  _PageAyaState createState() => _PageAyaState();
}

class _PageAyaState extends State<PageAya> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return          Positioned(
        top: size.height * 0.152,
        child:Container(
            width: size.width * 0.75,
            height: size.height * 0.75,
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
