import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demos/screens/home.dart';
import 'package:flutter_demos/widgets/app_state/state_container.dart';

//void main() => runApp(MyApp());
void main() => runApp(StateContainer(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('MyApp build');
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
