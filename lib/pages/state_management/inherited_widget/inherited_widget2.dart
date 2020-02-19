import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demos/pages/base/base_page_state.dart';
import 'package:flutter_demos/pages/base/base_stateful_page.dart';
import 'package:flutter_demos/widgets/my_inherited_widget.dart';

class InheritedWidget2 extends BaseStatefulPage {
  get title => 'InheritedWidget2';

  @override
  State<StatefulWidget> createState() {
    return _InheritedWidget2State();
  }
}

class _InheritedWidget2State extends BasePageState<InheritedWidget2> {
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
