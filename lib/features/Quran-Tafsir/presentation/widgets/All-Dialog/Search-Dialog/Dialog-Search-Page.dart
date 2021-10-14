import 'package:flutter/material.dart';
class showAlert extends StatefulWidget {
  const showAlert({Key? key}) : super(key: key);

  @override
  _showAlertState createState() => _showAlertState();
}

class _showAlertState extends State<showAlert> {
  @override
  Widget build(BuildContext context) {
    bool ayahSelected= false,rootSelected= false,wordSelected= false,wordRootSelected = false ;

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
                    Positioned(top:10,
                      child:
                      Container(
                        width:size.width,
                        height: size.height*0.1,
                        child: TextField(
                          autofocus: false,
                          style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.grey[300],
                            hintText: 'ابحث في القرآن زز على الاقل حرفين ',
                            contentPadding:
                            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                        ),
                      ),),

                    Positioned(top: size.height*0.05,
                        child: Container(
                          width:size.width,
                          height: size.height*0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(child: InkWell(
                                child: wordSelected? Image.asset('assets/search_icons/word_selected.png'):Image.asset('assets/search_icons/word.png'),
                                onTap: ()=>setState(()=>wordSelected = !wordSelected),)),

                              Expanded(child: InkWell(
                                child: Container(
                                    width:size.width*0.07,
                                    height:size.height*0.035,
                                    child: rootSelected? Image.asset('assets/search_icons/root_selected.png',fit: BoxFit.fill,):Image.asset('assets/search_icons/root.png',fit: BoxFit.fill)),
                                onTap: ()=>setState(()=>rootSelected = !rootSelected),)),

                              Expanded(child: InkWell(
                                child: wordRootSelected? Image.asset('assets/search_icons/word_root_selected.png'):Image.asset('assets/search_icons/word_root.png'),
                                onTap: ()=>setState(()=>wordRootSelected = !wordRootSelected),)),
                              Expanded(child: InkWell(
                                child:ayahSelected? Image.asset('assets/search_icons/Ayah_selected.png'): Image.asset('assets/search_icons/Ayah.png'),
                                onTap: ()=>setState(()=>ayahSelected = !ayahSelected),)),
                            ],
                          ),
                        )
                    ),
                    Positioned(top: size.height*0.12,
                        child: Container(
                          width:size.width,
                          height: size.height*0.08,
                          color: Colors.grey[350],
                        )
                    ),
                    Positioned(top: size.height*0.2,
                        child: Container(
                          width:size.width,
                          height: size.height,
                          child: ListView(
                            children: [
                              ListTile(),
                              ListTile(),
                              ListTile(),
                              ListTile(),
                            ],
                          ),
                        )
                    ),
                    Positioned(bottom:0,
                        child: Container(
                          width:size.width,
                          height: size.height*0.08,
                          color: Colors.grey[100],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.format_list_bulleted_outlined),
                              Image.asset('assets/search_icons/Check_List.png'),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
            ),

    );
  }
}