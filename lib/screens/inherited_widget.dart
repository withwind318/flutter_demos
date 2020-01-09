import 'package:flutter/widgets.dart';
import 'package:flutter_demos/screens/base/base_stateless_screen.dart';
import 'package:flutter_demos/widgets/my_inherited_widget.dart';

class InheritedWidgetDemo extends BaseStatelessScreen {

  get title => 'InheritedWidget Demo';

  @override
  Widget buildBody(BuildContext context) {
    return MyInheritedWidget(
      value: 0,
      child: Column(
        children: <Widget>[
          TestWidget(label: 'A'),
          MyInheritedWidget(
            value: 1,
            child: TestWidget(label: 'B'),
          ),
          MyInheritedWidget(
            value: 2,
            child: TestWidget(label: 'C'),
          ),
        ],
      ),
    );
  }

}

class TestWidget extends StatelessWidget {
  final String label;
  TestWidget({this.label});

  @override
  Widget build(BuildContext context) {
    MyInheritedWidget myInheritedWidget = MyInheritedWidget.of(context);
    print('TestWidget($label) myInheritedWidget.value = ${myInheritedWidget.value}');
    return Container();
  }
}
