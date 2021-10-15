import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Search-Dialog/Dialog-Search-Page.dart';

import 'Create-New-List-Ayat.dart';

class SearchListAyat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(actions: [
      Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              width: 100,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'قوائم الآيات',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 40,
              width: 100,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'قوائم البحث',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
      Container(
          height: 100,
          width: 100,

                child: TextButton(
                onPressed:()=>makeNewListAyat(context),
                  child: Text('انشاء قائمة',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),


    ]);
  }
}
