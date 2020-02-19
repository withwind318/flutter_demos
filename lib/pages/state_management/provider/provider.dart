import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demos/pages/base/base_stateless_page.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends BaseStatelessPage {
  get title => "Provider";

  final counter = CounterModel();

  @override
  Widget buildSelfScrollBody(BuildContext context) {
    return ChangeNotifierProvider<CounterModel>.value(
      value: counter,
      child: Center(
        child: MyWidget(),
      ),
    );
  }

  @override
  Widget buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => counter.increment(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('MyWidget build');
    final _count = Provider.of<CounterModel>(context);
//    return Text('${_count.value}', style: TextStyle(fontSize: 20));
    return Consumer<CounterModel>(
      builder: (context, CounterModel counter, child) {
        print('Consumer builder');
        return Text('${counter.value}', style: TextStyle(fontSize: 20));
      },
    );
  }
}

class CounterModel with ChangeNotifier {
  int _count = 0;

  int get value => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
