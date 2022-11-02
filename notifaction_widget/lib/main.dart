// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'secondpage.dart';

void main() {
  runApp(MyAppState());
}

class MyAppState extends StatelessWidget {
  GlobalKey<ScaffoldState> _scafoldkey = new GlobalKey<ScaffoldState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var onPressed;
    return MaterialApp(
        home: Scaffold(
            key: _scafoldkey,
            appBar: AppBar(
              title: Text("Navigation Ruter"),
            ),
            body: Builder(
              builder: (context) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        showtoast();
                      },
                      child: Text("Show Toast"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        showSnackbar();
                      },
                      child: Text("Show Snackbar"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        showAlert(context);
                      },
                      child: Text("Show Alert"),
                    )
                  ],
                ),
              ),
            )));
  }

  void showAlert(BuildContext context) {
    setState(() {
      Widget buttonOk = MaterialButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );

      Widget ButtonCancel = MaterialButton(
        child: Text("CANCEL"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );

      AlertDialog alert = AlertDialog(
        title: Text("Simple Text"),
        content: TextField(),
        actions: [
          buttonOk,
        ],
      );
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          });
    });
  }
}

void showSnackbar() {}

void showtoast() {
  setState(() {
    Fluttertoast.showToast(
        msg: 'This Notification from toast',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER);
  });
}

void setState(Null Function() param0) {}
