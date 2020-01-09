import 'package:flutter/widgets.dart';

class MyInheritedWidget extends InheritedWidget {

  final int value;

  MyInheritedWidget({@required this.value, @required Widget child}) : super(child: child);

  static MyInheritedWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(MyInheritedWidget);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }

}