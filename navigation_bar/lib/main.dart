import 'package:flutter/material.dart';
import 'Menu/pertamapage.dart';
import 'Menu/keduapage.dart';
import 'Menu/ketigapage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  get _tabController => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_queue),
              ),
              Tab(
                icon: Icon(Icons.account_circle_outlined),
              ),
              Tab(
                icon: Icon(Icons.apple_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            pertamapage(),
            keduapage(),
            ketigapage(),
          ],
        ),
      ),
    );
  }
}
