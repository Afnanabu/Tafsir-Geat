import 'package:flutter/material.dart';

class PageAya extends StatefulWidget {

  @override
  _PageAyaState createState() => _PageAyaState();
}

class _PageAyaState extends State<PageAya> {

  List<Pages> suarPages = [
    Pages(imagesouce: 'assest/Image-Sour/quranpage1.png'),
    Pages(imagesouce: 'assest/Image-Sour/quranpage2.png'),
    Pages(imagesouce: 'assest/Image-Sour/quranpage3.png'),
    Pages(imagesouce: 'assest/Image-Sour/quranpage4.png'),
    Pages(imagesouce: 'assest/Image-Sour/quranpage5.png'),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   Positioned(
        top: size.height * 0.15,
        child:Container(
            width: size.width * 0.82,
            height: size.height * 0.76,
            child:PageView.builder(
              itemCount: suarPages.length,
              itemBuilder: (BuildContext context, int index)
              {

                return Image.asset('${suarPages[index].imagesouce}', fit: BoxFit.fill,);
              },

            )

        )
    );
  }
}

class Pages {
  String? imagesouce;

  Pages({required this.imagesouce});
}