import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AyatMenuList(BuildContext context) {
  return AlertDialog(
    content: DefaultTabController(
      length: 2,
      child: Container(
        height: 300,
        child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey[600],
            tabs: [
              Tab(text: 'قائمة الاجزاء'),
              Tab(text: 'قائمة السور'),
            ],
          ),
          body: TabBarView(
            children: [
              JozoSearchTab('البحث في الاجزاء '),
              SoraSearchTab('البحث في السور ')
            ],
          ),
        ),
      ),
    ),
    actions: [
      Container(
        height: 30,
        color: Colors.blue[200],
        child: Row(
          children: [
            Spacer(
              flex: 2,
            ),
            Expanded(
              child: SizedBox(
                height: 20,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 13),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: '٦.٤:١ ',
                    contentPadding: EdgeInsets.only(bottom: 20, right: 20),
                  ),
                ),
              ),
            ),
            Text(
              ':اذهب للصفحة ',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      )
    ],
  );
}

class SoraSearchTab extends StatelessWidget {
  String lableText;

  SoraSearchTab(this.lableText);

  List<String> chooseSouraList = [
    'الفاتحة',
    'البقرة',
    'آل عمران',
    'النساء',
    'المائدة',
    'الأنعام',
    'الأعراف',
    'الأنفال',
    'التوبة',
    'يونس',
    'هود',
    'يوسف',
    'الرعد',
    'ابراهيم',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(3)),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Expanded(
                          child: TextField(
                              style: TextStyle(
                                  fontSize: 22.0, color: Colors.black),
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                labelText: lableText,
                              )),
                        ),
                      ),
                      Container(
                        height: 300,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ...chooseSouraList
                                  .map((item) => Column(
                                        children: [
                                          ListTile(
                                            title: Text(item),
                                          ),
                                        ],
                                      ))
                                  .toList(),
                            ],
                          ),
                        ),
                      ),
                    ])))));
  }
}

class JozoSearchTab extends StatelessWidget {
  String lableText;

  JozoSearchTab(this.lableText);

  List<String> chooseSouraList = [
    'الجزء الاول',
    'الجزء الثاني',
    'الجزء الثالث',
    'الجزء الرابع',
    'الجزء الخامس',
    'الجزء السادس',
    'الجزء السابع',
    'الجزء الثامن',
    'الجزء التاسع',
    'الجزء العاشر',
    'الجزء الحادي عشر',
    'الجزء الثاني عشر',
    'الجزء الثالث عشر ',
    'الجزء الرابع عشر ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: TextField(
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: lableText,
                      )),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: 200,
                  child: Column(
                    children: [
                      ...chooseSouraList
                          .map((item) => Column(
                                children: [
                                  ListTile(
                                    title: Text(item),
                                  ),
                                  Divider(
                                    height: 5,
                                    thickness: 1,
                                    endIndent: 30,
                                    indent: 30,
                                  ),
                                ],
                              ))
                          .toList(),
                    ],
                  ),
                ),
              ),
            ])),
      ),
    ));
  }
}
