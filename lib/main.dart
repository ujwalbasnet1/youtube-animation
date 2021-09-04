import 'package:flutter/material.dart';

import 'home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeView(),
    );
  }
}
