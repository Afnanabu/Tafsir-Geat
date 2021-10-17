import 'package:flutter/material.dart';
import 'package:tafsirs/Features/Tafser-Quran/Presentation/Pages/SplachScreen.dart';
void main(){runApp(MainPage());}
class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
