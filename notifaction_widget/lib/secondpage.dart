import 'package:flutter/material.dart';
import 'secondpage.dart';

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.blue,
                child: Text("Kembali", style: TextStyle(color: Colors.white)),
              )
            ]),
      ),
    );
  }
}
