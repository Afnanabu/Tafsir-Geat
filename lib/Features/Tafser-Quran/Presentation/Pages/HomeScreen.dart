

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsirs/Features/Tafser-Quran/Presentation/widget/All%20Button.dart';
import '../widget/All-Ayat.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
 double height=MediaQuery.of(context).size.height;
 double width=MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        top: true,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width:  width*1.0,
               height: height,
               child: Image.asset(
                'Image/QuranPageBackground.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                 height: height * 0.12,
                child:PageButton()
                ),
              ),

             Positioned(
              top:  height * 0.1,
              child: Container(
                width:  width * 0.97,
                height:  height * 0.86,
                child: Image.asset(
                  'Image/imagebordar.png'   ,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(


                top:height>500?100:height* 0.2,
                child:Container(
                    width:    width*0.82,
                    height:  height*0.76,
                    child:AyatPage()

                )
            ),
             Positioned(
              top:  height * 0.114,
              left: width * 0.66,
              child: Container(
                width: width * 0.15,
                height:  height * 0.04,
                child: Image.asset('Image/Button-icon/jozoaa.png', fit: BoxFit.fill,),),
            ),
            Positioned(
              top:  height * 0.114,
              left: width * 0.195,
              child: Container(
                width:  width * 0.15,
                height:  height * 0.04,
                child: Image.asset('Image/Button-icon/sora.png', fit: BoxFit.fill,),),
            ),
          ],
        ),
      ),
    );
  }
}


