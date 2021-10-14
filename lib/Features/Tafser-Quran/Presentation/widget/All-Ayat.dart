import 'package:flutter/material.dart';
class AyatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Image.asset('Image/Ayat/Aya1.png',),
          Image.asset('Image/Ayat/Aya2.png',),
          Image.asset('Image/Ayat/Aya3.png',),
          Image.asset('Image/Ayat/Aya4.png',),
          Image.asset('Image/Ayat/Aya5.png',),
        ],),);}}
