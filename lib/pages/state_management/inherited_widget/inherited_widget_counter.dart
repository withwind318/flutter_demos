import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demos/pages/state_management/inherited_widget/inherited_widget1.dart';
import 'package:flutter_demos/pages/state_management/inherited_widget/state_container.dart';

class InheritedWidgetCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateContainer(
      child: MaterialApp(
        title: 'Flutter Demos',
        theme: ThemeData(
          accentColor: Colors.lightBlue[600],
          appBarTheme: AppBarTheme(
            brightness: Brightness.light,
            color: Colors.white,
            elevation: 0.0,
          ),
        ),
        home: InheritedWidget1(),
      ),
    );
  }
}