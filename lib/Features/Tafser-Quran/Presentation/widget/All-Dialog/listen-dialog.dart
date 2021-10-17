import 'package:flutter/material.dart';
class showAlertListen extends StatelessWidget {
  const showAlertListen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

        return AlertDialog(
            contentPadding: EdgeInsets.all(9.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            content: Container(
                width: 90,
                height: 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                       Align(
                          child: Center(

                            child: Text("تنبيه ! ",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'helvetica',
                                    color: Colors.black)),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                         SizedBox(height: 40,),

                         Center(
                           child: Text('لم يتم تنزيل السور المراد الاستماع الى آياتها مسبقا'
                               ' .هل تريد تنزيل السور؟',
                             style: TextStyle(color: Colors.black,fontSize: 11),),
                         ),                         SizedBox(height: 10,),

                      Row(
                          children: [
                            SizedBox(height: 40,),
                            Divider(color: Colors.blue,),

                            Container(
                                width: 30,
                                child: Text('لا')),
                            Spacer(),
                            Container(
                                width: 30,
                                child: Text('نعم')),



                          ])



                          ])
        ));
      }

}
