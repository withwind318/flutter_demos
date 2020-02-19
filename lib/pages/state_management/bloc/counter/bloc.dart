import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demos/pages/base/base_stateless_page.dart';
import 'package:flutter_demos/pages/state_management/bloc/counter/counter_bloc.dart';

class BlocPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (BuildContext context) => CounterBloc(),
      child: BlocCounter(),
    );
  }
}

class BlocCounter extends BaseStatelessPage {
  get title => 'Bloc counter';

  @override
  Widget buildSelfScrollBody(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<CounterBloc, int>(
      builder: (context, count) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                '$count',
                style: TextStyle(fontSize: 24.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Subtract'),
                    onPressed: () => counterBloc.add(CounterEvent.decrement),
                  ),
                  RaisedButton(
                    child: Text('Add'),
                    onPressed: () => counterBloc.add(CounterEvent.increment),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
