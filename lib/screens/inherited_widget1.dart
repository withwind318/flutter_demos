import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demos/router.dart';
import 'package:flutter_demos/screens/base/base_stateless_screen.dart';
import 'package:flutter_demos/screens/inherited_widget2.dart';
import 'package:flutter_demos/widgets/my_inherited_widget.dart';

class InheritedWidget1 extends BaseStatelessScreen {
  get title => 'InheritedWidget1';

  @override
  Widget buildSelfScrollBody(BuildContext context) {
    return Center(child: MyWidget());
  }

  @override
  Widget buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.arrow_right),
      onPressed: () => Router.push(context, InheritedWidget2()),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('MyWidget build');
    MyInheritedWidget myInheritedWidget = MyInheritedWidget.of(context);
    return Text('${myInheritedWidget.data.count}', style: TextStyle(fontSize: 20));
  }
}