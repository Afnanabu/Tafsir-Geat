import 'package:flutter/material.dart';
class showAlertSetting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

        return AlertDialog(
            contentPadding: EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            content: Container(
                width: 150,
                height: 300,
                child: SingleChildScrollView(
                  child:Directionality(textDirection: TextDirection.rtl,
                  child:
                  Column(
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
                              child: Text("الاعدادات ",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'helvetica',
                                      color: Colors.black)),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                        ),

                       ListTile(
                         title: Text('اختيار القارىْ',style: TextStyle(color: Colors.black),),
                          trailing:Image.asset('Image/Button-icon/left.png') ,
                       ),
                       ListTile(
                         title: Text( 'تنزيل الصورة ',style: TextStyle(color: Colors.black),),
                         trailing:Image.asset('Image/Button-icon/left.png') ,
                       ),
                       ListTile(
                         title: Text('    تنزيل الصورة التي تحوي الآيات ',style: TextStyle(color: Colors.black),),
                         trailing:Image.asset('Image/Button-icon/left.png') ,
                       ),
                       ListTile(
                         title: Text('   اختيار التفسير  ',style: TextStyle(color: Colors.black),),
                         trailing:Image.asset('Image/Button-icon/left.png') ,
                       ),
                       ListTile(
                         title: Text('   اعدادات التراجم  ',style: TextStyle(color: Colors.black),),
                         trailing:Image.asset('Image/Button-icon/left.png') ,
                       ),
                       ListTile(
                         title: Text('   زمن توقف الشاشة  ',style: TextStyle(color: Colors.black),),
                         trailing:Image.asset('Image/Button-icon/left.png') ,
                       ),
                       ListTile(
                         title: Text('  تفعيل الاشعارات   ',style: TextStyle(color: Colors.black),),
                           trailing:Icon(Icons.check_box,color: Colors.green,)
                       ),
                       ListTile(
                         title: Text('  المساعدة   ',style: TextStyle(color: Colors.black),),

                       ),
                       ListTile(
                         title: Text('  نبذة عنا    ',style: TextStyle(color: Colors.black),),
                         trailing:Image.asset('Image/Button-icon/left.png') ,
                       ),
                       ListTile(
                         title: Text(' انشر تؤجر    ',style: TextStyle(color: Colors.black),),

                       ),
                     ],
                   )



                ))));
      }

}
