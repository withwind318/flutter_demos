import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demos/screens/base/base_screen_state.dart';
import 'package:flutter_demos/screens/base/base_stateful_screen.dart';
import 'package:flutter_demos/widgets/my_inherited_widget.dart';

class InheritedWidget2 extends BaseStatefulScreen {
  @override
  State<StatefulWidget> createState() {
    return _InheritedWidget2State();
  }
}

class _InheritedWidget2State extends BaseScreenState<InheritedWidget2> {
  String title = 'InheritedWidget2';

  @override
  Widget buildSelfScrollBody(BuildContext context) {
    MyInheritedWidget myInheritedWidget = MyInheritedWidget.of(context);
    return Center(
      child: Text('${myInheritedWidget.data.count}', style: TextStyle(fontSize: 20)),
    );
  }

  @override
  Widget buildFloatingActionButton(BuildContext context) {
    MyInheritedWidget myInheritedWidget = MyInheritedWidget.of(context);
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => myInheritedWidget.data.increment(),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('_InheritedWidget2State didChangeDependencies');
  }
}
