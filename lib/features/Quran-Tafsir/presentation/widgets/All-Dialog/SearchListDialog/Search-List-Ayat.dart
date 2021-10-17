import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/SearchListDialog/Create-New-List-Ayat.dart';

SearchListAyat(BuildContext context) {
return AlertDialog(
     content: DefaultTabController(
      length: 2,
      child: Container(
        height: 200,
        child: Scaffold(
          appBar: TabBar(
             unselectedLabelColor: Colors.grey[600],
            labelColor: Colors.black,

            tabs: [
              Tab(text: 'قوائم البحث',),
              Tab(text: 'قوائم الاّيات'),
            ],
          ),
          body: TextButton(

                child: Text(
                  'إنشاء قائمة',
                  style: TextStyle(color: Colors.blue),
                ),
              onPressed: ()=>makeNewListAyat(context)),
        ),
      ),
    ),
  );
}