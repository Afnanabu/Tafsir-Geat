import 'package:flutter/material.dart';

import 'All-Dialog/Ayat-Listen.dart';
import 'All-Dialog/listen-dialog.dart';
import 'All-Dialog/search-dialog.dart';
import 'All-Dialog/settings-dialog.dart';


class PageButton extends StatefulWidget {
  @override
  _PageButtonState createState() => _PageButtonState();
}

class _PageButtonState extends State<PageButton> {
  bool onClick=true;

  void _toggle(){
    setState(() =>onClick=!onClick);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      child: Container(
        width: size.width,
        height: size.height * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(
                child: InkWell(
              child: Image.asset('Image/Button-icon/search.png'),
              onTap: () => showDialog(context: context, builder: (context)=>showAlert())),),

            Expanded(
                child: Image.asset(
              'Image/Button-icon/addBookMark.png',
            )),
            InkWell(
              child: Expanded(
                child: Image.asset('Image/Button-icon/bookmark.png'),
              ),onTap:()=> showDialog(context: context, builder: (context)=>showAlertAyatListen()),
            ),
            Expanded(
              child: InkWell(
                child: Image.asset('Image/Button-icon/menu.png'),
              ),
            ),

            Expanded(
              child: Image.asset('Image/Button-icon/listaya.png'),
            ),

            Expanded(
                child: InkWell(
              child: Image.asset('Image/Button-icon/settings.png'),
                    onTap: () => showDialog(context: context, builder: (context)=>showAlertSetting())),),

            Expanded(
              child: Image.asset('Image/Button-icon/doubleplay.png'),
            ),

            Expanded(
              child: InkWell(
                  child: Container(
                    height: 60,
                      width: 55,

                      child: Image.asset('Image/Button-icon/play.png')),
                  onTap: () => showDialog(context: context, builder: (context)=>showAlertListen())),
            ),

          ],
        ),
      ),
    );
  }

}
