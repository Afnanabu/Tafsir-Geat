import 'package:flutter/material.dart';

class showAlert extends StatefulWidget {

  @override
  _showAlertState createState() => _showAlertState();
}

class _showAlertState extends State<showAlert> {
  bool ayahSelected= false,rootSelected= false,wordSelected= false,wordRootSelected = false ;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      child: Container(
        height: 200,
        width: 300,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text(' البحث في القرآن ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            backgroundColor: Colors.grey,
            actions: [
            ],
          ),
          body: Container(
            height: 500,
            width: 500,
            child: Stack(

              children: [
                Positioned(top:5,
                  child:
                  Container(
                    width:size.width,
                    height:40,
                    child: TextField(
                      autofocus: false,
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        hintText: 'على الاقل حرفين ',
                        contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 2.0),


                      ),
                    ),
                  ),
                ),

                Positioned(top: 60,
                    child: Container(
                      width:300,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: InkWell(
                            child: wordSelected? Image.asset('assest/Search-Image/word.png')
                                :Image.asset('assest/Search-Image/word_selected.png'),
                            onTap: ()=>setState(()=>wordSelected = !wordSelected),)),

                          Expanded(child: InkWell(
                            child: Container(
                                width:size.width*0.07,
                                height:20,
                                child: rootSelected? Image.asset('assest/Search-Image/root.png',fit: BoxFit.fill,):Image.asset('assest/Search-Image/root_selected.png',fit: BoxFit.fill)),
                            onTap: ()=>setState(()=>rootSelected = !rootSelected),)),

                          Expanded(child: InkWell(
                            child: wordRootSelected? Image.asset('assest/Search-Image/word_root_selected.png'):Image.asset('assest/Search-Image/word_root.png'),
                            onTap: ()=>setState(()=>wordRootSelected = !wordRootSelected),)),
                          Expanded(child: InkWell(
                            child:ayahSelected? Image.asset('assest/Search-Image/AyatQuran.png'): Image.asset('assest/Search-Image/Un-Selected-Aya.png'),
                            onTap: ()=>setState(()=>ayahSelected = !ayahSelected),)),
                        ],
                      ),
                    )
                ),

                Positioned(bottom:0,
                    child: Container(
                      width:size.width,
                      height: 30,
                      color: Colors.grey[100],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width:30,
                              child: Expanded(child: Image.asset('assest/Page-Image/ayaList.png'))),

                           Expanded(child: Image.asset('assest/Search-Image/Check_List.png')),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}