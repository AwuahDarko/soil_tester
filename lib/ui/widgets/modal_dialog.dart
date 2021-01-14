import 'package:flutter/material.dart';

class ModalDialog {
  static Future<dynamic> showMsgDialog(BuildContext context, String title, String msg) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text("Ok"),
            )
          ],
        ));
  }
}
