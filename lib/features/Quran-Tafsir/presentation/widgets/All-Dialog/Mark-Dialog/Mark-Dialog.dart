import 'package:flutter/material.dart';


class BookMarkListDialog extends StatefulWidget {
  @override
  _BookMarkListDialogState createState() => _BookMarkListDialogState();
}

class _BookMarkListDialogState extends State<BookMarkListDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 260.0,
        height: 230.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.blue[200]),
                child: Text(
                  'العلامات',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // dialog centre
            Expanded(
              child: Container(),
              flex: 2,
            ),

            Expanded(
              child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(color: Colors.blue[200]),
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Image.asset(
                      'assest/Search-Image/delete.png',
                      alignment: Alignment.bottomLeft,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
