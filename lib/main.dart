import 'package:flutter/material.dart';

import 'AddAnimation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'GoGame Assignment',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AddAnimation(),
      debugShowCheckedModeBanner: false,
    );
  }
}