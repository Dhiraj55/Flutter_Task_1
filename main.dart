import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'mv/audioUI.dart';
import 'mv/mainUI.dart';

void main() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.black);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/MainUI': (context) => MainUI(),
        '/Audioo': (context) => Audioo(),
      },
      debugShowCheckedModeBanner: false,
      home: MainUI(),
    );
  }
}
