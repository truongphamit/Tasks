import 'package:flutter/material.dart';
import 'package:tasks/pages/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tasks',
      theme: new ThemeData(
          canvasColor: Colors.transparent, accentColor: Colors.blueAccent),
      home: new HomePage(),
    );
  }
}
