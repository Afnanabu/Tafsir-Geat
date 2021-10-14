import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/pages/sura_page.dart';


class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToHomePage();
  }

  navigateToHomePage()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context)=>AyatPage(),),);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assest/Page-Image/Image-Splach.png'),
              fit: BoxFit.fill
          ),
        ),
      ),
    );
  }

}