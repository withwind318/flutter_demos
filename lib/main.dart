import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demos/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white.withOpacity(0),
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Flutter Demos',
      theme: ThemeData(
        accentColor: Colors.lightBlue[600],
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Colors.white,
          elevation: 0.0,
        ),
      ),
      home: Home(),
    );
  }
}
