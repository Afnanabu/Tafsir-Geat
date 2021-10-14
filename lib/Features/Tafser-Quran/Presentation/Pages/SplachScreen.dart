import 'package:flutter/material.dart';

import 'HomeScreen.dart';


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
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context)=>HomeScreen(),),);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('Image/background.png'),
              fit: BoxFit.fill
          ),
        ),
      ),
    );
  }

}