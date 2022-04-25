import 'package:flutter/material.dart';
import 'package:hidden_drawer/HiddenDrawer.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const HiddenDrawer(),
      theme: ThemeData(primarySwatch: Colors.cyan),
    );
  }
}
