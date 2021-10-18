import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greattafsire/features/Quran-Tafsir/presentation/widgets/All-Dialog/Seetings-Dialog/Main-Seetings/setting_dialog.dart';

class AboutUsDialog extends StatefulWidget {
  const AboutUsDialog();

  @override
  _AboutUsDialogState createState() => _AboutUsDialogState();
}

class _AboutUsDialogState extends State<AboutUsDialog> {
  _AboutUsDialogState();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Container(
            width: double.infinity,
            height: 60,
            color: Colors.blueGrey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'نبذة عنا ',
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
          height: 400,
          width: 300,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assest/Page-Image/godImage.jpg'),
                Text(
                    'تمتلك وقفية الأمير غازي للفِكر القرآنيّ موقع التفاسير العظيمة GreatTafsirs.com وهو وقف ذُرّيّ غير ربحي ومقرّه الأردن تم تأسيسه في عام ١٤٣٣هـ /٢٠١٢ م. وقد أسّس مشاريع أخرى مثل موقع الفِكر القرآنيّ'
                    ' QuranicThought.com والخطوط الإسلامية المجانيّة FreeIslamicCalligraphy.com . كم أنّه من خلال سمو الأمير غازي بن محمد، مؤسس هذه الوقفية، فإنّ الموقع مرتبط بموقع التفسير الكبير Altafsir.com وموقع السيرة Alsirah.com بالإضافة إلى مؤسسة آل البيت المَلكيّة للفِكر الإسلاميّ في عَمّان، الأردن.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
