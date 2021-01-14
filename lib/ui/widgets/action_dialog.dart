import 'package:flutter/material.dart';

class ActionDialog {
  static Future<dynamic> showActionDialog(BuildContext context, String title,
      String msg, String rejectText, String acceptText) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: Text(title),
              content: Text(msg),
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text(rejectText, style: TextStyle(color: Colors.redAccent),),
                ),
                FlatButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text(acceptText),
                )
              ],
            ));
  }
}
