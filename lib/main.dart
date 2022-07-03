import 'package:flutter/material.dart';
import 'package:flutter_codigo_setstate/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SetStateApp',
      home: HomePage(),
    );
  }
}
