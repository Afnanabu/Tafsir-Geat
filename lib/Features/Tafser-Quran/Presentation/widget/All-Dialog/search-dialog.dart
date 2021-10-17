import 'package:flutter/material.dart';

class showAlert extends StatelessWidget {

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
                      child: Text("البحث في القران ",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'helvetica',
                              color: Colors.black)),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Container(
                   padding: EdgeInsets.all(10),
                  child: new Container(
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7),),
                        color: Colors.grey),
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: new TextField(
                               decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.white),
                                hintText: "ابحث في القرآن..على الاقل حرفين",
                                icon: Icon(Icons.search),
                                counterText: "",
                              ),),),),

                      ],
                    ),
                  ),
                ),

                Container(
                     width: 600,
                     child:
                    Row(
                      children: [


                        Container(
                            width: 60,
                             child: Image.asset('Image/Button-icon/Ayah_selected.png')),
                        SizedBox(width: 5,),




                        Container(
                            width: 60,
                             child: Image.asset('Image/Button-icon/root-selected.png')),
                        Container(
                            width: 50,
                             child: Image.asset('Image/Button-icon/rootselected.png')),
                        Container(
                            width: 70,
                             child: Image.asset('Image/Button-icon/select.png')),


                      ],
                    )),
                     Expanded(
                       child: Row(
                         children: [

                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
                              child: Container(
                                width: 260,
                                   color: Colors.blue[100],
                                   child: Text('      عدد النتائج :',style: TextStyle(color: Colors.black),)),
                            ),

                         ],

                       ),
                     ),


              Row(
                  children: [



                    Container(
                        width: 30,
                        child: Image.asset('Image/Button-icon/menu.png')),
                    Spacer(),
                    Container(
                        width: 30,
                        child: Image.asset('Image/Button-icon/check.png')),



                  ])
     ] )));
    }

    }
