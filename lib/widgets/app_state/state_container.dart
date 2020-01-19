import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demos/widgets/my_inherited_widget.dart';

class StateContainer extends StatefulWidget {
  final Widget child;

  StateContainer({@required this.child});

  @override
  State<StatefulWidget> createState() {
    return StateContainerState();
  }
}

class StateContainerState extends State<StateContainer> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('StateContainerState build');
    return MyInheritedWidget(
      data: this,
      child: widget.child,
    );
  }
}
