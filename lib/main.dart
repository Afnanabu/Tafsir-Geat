import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'features/Quran-Tafsir/presentation/pages/splash_page.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
    home: MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
