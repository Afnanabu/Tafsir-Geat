import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Menu-Dialog/Ayat-Jouzoaa-List.dart';
import '../All-Dialog/Listen-Dialog/Listen-Dialog.dart';
import '../All-Dialog/Play-Dialog/Play-Dialog-Page.dart';
import '../All-Dialog/Search-Dialog/Dialog-Search-Page.dart';
import '../All-Dialog/SearchListDialog/Search-List-Ayat.dart';
import '../All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';
import '../All-Dialog/Mark-Dialog/Mark-Dialog.dart';

bool bookMark = false;
class ButtonPage extends StatefulWidget {

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      child: Container(
        width: size.width,
        height: size.height * 0.11,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: size.width * 0.007,),
            Expanded(child: InkWell(
              child: Image.asset('assest/Page-Image/search_icon.png'),
               onTap:()=>showDialog(context: context, builder: (context)=>showAlert()),
              )),


             Expanded(child: InkWell(child: Image.asset(
                'assest/Page-Image/bookmark_list_icon.png'),onTap: ()=>showDialog(context: context, builder: (context)=> BookMarkListDialog(),)),),Expanded(child: InkWell(child: Image.asset(
                'assest/Page-Image/addBookMark_icon.png'),onTap: ()=>showDialog(context: context, builder: (context)=> BookMarkListDialog(),)),),
             Expanded(child: InkWell(
              child: Image.asset('assest/Page-Image/list_icon.png'),onTap:()=>showDialog(context: context,
                 builder: (context)=>AyatMenuList(context))),),
             Expanded(child: InkWell(
              child: Image.asset('assest/Page-Image/settings_icon.png'),
            onTap:()=>showDialog(context: context, builder: (context)=>SettingsDialog())),),
             Expanded(child: InkWell(
              child: Image.asset('assest/Page-Image/ayaList.png'),
            onTap:()=>showDialog(context: context, builder: (context)=>SearchListAyat(context),))),
             Expanded(child: InkWell(
              child: Image.asset('assest/Page-Image/play_all_icon.png'),
            onTap: ()=>listenDialog(context)),),
             Expanded(child: InkWell(
              child: Image.asset('assest/Page-Image/playEnd.png'),
            onTap:()=>playAlert(context)),),
           ],
        ),
      ),
    );
  }
}