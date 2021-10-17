import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';

class ChooseTafsirDialog extends StatefulWidget {
  const ChooseTafsirDialog();

  @override
  _ChooseTafsirDialogState createState() => _ChooseTafsirDialogState();
}

class _ChooseTafsirDialogState extends State<ChooseTafsirDialog> {
  _ChooseTafsirDialogState();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        title: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          child: Container(
            width: double.infinity,
            height: 60,
            color: Colors.blueGrey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'اختيار التفسير',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextButton.icon(
                  icon: Text('الإعدادات'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    showDialog(
                        context: context, builder: (_) => SettingsDialog());
                  },
                  label: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        titlePadding: EdgeInsets.all(0),
        scrollable: true,
        content: Container(
          height: 250,
          width: 250,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text('إرشاد العقل السليم الى مزايا الكتاب'),
                ),
                ListTile(
                  title: Text('أضواء البيان في تفسير القرآن/الشنقيطي'),
                ),
                ListTile(
                  title: Text('أيسر التفاسير / أبو بكر الجزائري'),
                ),
                ListTile(
                  title: Text('ألبحر المحيط/ابو حيان'),
                ),
                ListTile(
                  title: Text('البحر المديد في تفسير القرآن المجيد/ابن عجمية'),
                ),
                ListTile(
                  title: Text('الكشف والبيان/الثعلبي'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
