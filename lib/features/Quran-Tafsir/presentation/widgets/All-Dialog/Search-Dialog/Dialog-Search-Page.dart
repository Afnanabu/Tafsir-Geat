import 'package:flutter/material.dart';

class showAlert extends StatefulWidget {

  @override
  _showAlertState createState() => _showAlertState();
}

class _showAlertState extends State<showAlert> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AlertDialog(
      contentPadding: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      content: Container(
        width: 150,
        height: 200,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              child: Container(
                width: size.width,
                height: size.height * 0.1,
                child: TextField(
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    fillColor: Colors.grey[300],
                    hintText: 'ابحث في القرآن .. على الاقل حرفين ',
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: size.height * 0.07,
                child: Container(
                  width: size.width / 1.9,
                  height: size.height * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child:
                              Image.asset('assest/Search-Image/AyatQuran.png')),
                      Expanded(
                          child: Image.asset(
                        'assest/Search-Image/root_selected.png',
                      )),
                      Expanded(
                          child: Image.asset(
                              'assest/Search-Image/word_root_selected.png')),
                      Expanded(
                        child: Image.asset(
                            'assest/Search-Image/word_selected.png'),
                      ),
                    ],
                  ),
                )),
            Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height * 0.08,
                  color: Colors.grey[400],
                  child: Row(
                    children: [
                      Image.asset('assest/Search-Image/Add-List.png'),
                      SizedBox(width: 200),
                      Image.asset('assest/Search-Image/Check_List.png'),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
