import 'package:flutter/material.dart';

class Alerts {
  static showAlertDialog(BuildContext context,String okButtonText,VoidCallback onPress) {
    Widget okButton = MaterialButton(
      child: Text(okButtonText),
      onPressed: onPress,
    );

    AlertDialog alert = AlertDialog(
      title: const Text("My title",style: TextStyle(color: Colors.black),),
      content: const Text("This is my message.",style: TextStyle(color: Colors.black),),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}