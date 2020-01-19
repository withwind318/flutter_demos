import 'package:flutter/widgets.dart';
import 'package:flutter_demos/widgets/app_state/state_container.dart';

class MyInheritedWidget extends InheritedWidget {
  final StateContainerState data;

  MyInheritedWidget({@required this.data, @required Widget child}) : super(child: child);

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
