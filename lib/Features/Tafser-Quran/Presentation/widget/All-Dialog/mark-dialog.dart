import 'package:flutter/material.dart';
class showAlertMark extends StatelessWidget {
  const showAlertMark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


        return AlertDialog(
            contentPadding: EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            content: Container(
                width: 150,
                height: 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 300,
                        height: 40,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        color: Colors.grey,
                        child: Align(
                          child: Center(
                            child: Text("العلامات ",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'helvetica',
                                    color: Colors.black)),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                      ),


                      Row(
                          children: [
                               SizedBox(height: 140,),

                            Padding(

                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.blue[100],
                                  width: 249,
                                  height: 30,

                                    child: Image.asset('Image/Button-icon/delete.png'),
                                  )),





                          ])
                    ] )));
      }

}
