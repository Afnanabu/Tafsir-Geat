 import 'package:flutter/material.dart';
class showAlertAyatListen extends StatefulWidget {

  @override
  _showAlertAyatListenState createState() => _showAlertAyatListenState();
}

class _showAlertAyatListenState extends State<showAlertAyatListen> {
 bool _value = false;
 int val = -1;
  @override
  Widget build(BuildContext context) {

    return AlertDialog(
        contentPadding: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        content:Directionality(textDirection: TextDirection.rtl,
        child:

        SingleChildScrollView(
          child: Container(
              width: 400,
              height: 550,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      width: 300,
                      height: 40,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      color: Colors.white,
                      child: Align(
                        child: Center(

                         child: Text("استماع ",
                             style: TextStyle(
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.bold,
                                 fontFamily: 'helvetica',
                                 color: Colors.black)),
                        ),
                       alignment: Alignment.centerLeft,
                      ),
              ),
                   Divider(color: Colors.black45,thickness: 2,),

                   Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                            ListTile(
                             title: Text("النازعات"),
                                trailing: Radio(
                              value: 1,
                              groupValue: val,
                              onChanged: (value) {
                               setState(() {
                                val = 1;
                               });
                              },
                              activeColor: Colors.blue,
                             ) ),
                            Divider(color: Colors.black45,thickness: 2,),
                            ListTile(
                             title: Text("استماع للصفحة كاملة"),
                             trailing: Radio(
                              value: 2,
                              groupValue: val,
                              onChanged: (value) {
                               setState(() {
                                val = 1;
                               });
                              },
                              activeColor: Colors.blue,
                             ),
                            ),
                            Divider(color: Colors.black45,thickness: 2,),
                            ListTile(
                             title: Text("استماع للحزب"),
                             trailing: Radio(
                              value: 2,
                              groupValue: val,
                              onChanged: (value) {
                               setState(() {
                                val = 1;
                               });
                              },
                              activeColor: Colors.blue,
                             ),
                            ),
                            Divider(color: Colors.black45,thickness: 2,),
                            ListTile(
                             title: Text("استماع للجزء"),
                             trailing: Radio(
                              value: 2,
                              groupValue: val,
                              onChanged: (value) {
                               setState(() {
                                val = 1;
                               });
                              },
                              activeColor: Colors.blue,
                             ),
                            ),
                            Divider(color: Colors.black45,thickness: 2,),

                            ListTile(
                             title: Text('تكرار الاستماع ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:22),),
                              leading: Checkbox(

                                onChanged: (value) {
                                  setState(() {
                                    val = 1;
                                  });
                                },
                                activeColor: Colors.blue, value: _value,
                              ),
                            ),
                             ListTile(
                             title: Text('الاستماع من الصفحة الحالية',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:22),),
                              leading: Checkbox(

                                onChanged: (value) {
                                  setState(() {
                                    val = 1;
                                  });
                                },
                                activeColor: Colors.blue, value:_value,
                              ),
                            ),
                             Divider(color: Colors.black45,thickness: 2,),

                           ],
                          )
                       ] )


                        ),
        )));


  }
}
