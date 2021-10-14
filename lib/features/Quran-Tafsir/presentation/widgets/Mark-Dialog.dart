import 'package:flutter/material.dart';

import 'All-Dialog/Delete-Dialog/Delete-Dialog.dart';

class BookMarkListDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      content:  Container(
        width:size.width*0.4,
        height: size.height*0.4,
        decoration:  BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius:  BorderRadius.all( Radius.circular(32.0)),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Positioned(
              top: 0,
              child: Container(
                width:size.width,
                height: size.height*0.06,
                color: Colors.blue[200],
                child: Text('العلامات', style: TextStyle(color: Colors.black, fontSize: 30,),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // dialog centre
            new Expanded(
              child: new Container(),
              flex: 2,
            ),

            Positioned(
              bottom: 0,
              child:
              Container(
                  width:size.width,
                  height: size.height*0.04,
                  color: Colors.blue[200],
                  child:InkWell(
                    child: Image.asset('assest/Search-Image/delete.png',alignment:
                    Alignment.bottomLeft,),onTap:()=>deleteAlert(context),
                  )
              ),
            ),



          ],

        ),
      ),
    );
  }
}