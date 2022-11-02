import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Flutter")),
        body: Container(
            color: Colors.black26,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Text(
                    "Belajar Flutter KMMB - STIKOM Bali",
                    textAlign: TextAlign.center,
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.orange,
                          height: 150,
                        )),
                        Expanded(child: Container(color: Colors.green)),
                      ]),
                ),
              ],
            )),
      ),
    );
  }
}
