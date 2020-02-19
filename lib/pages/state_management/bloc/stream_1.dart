import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demos/pages/base/base_page_state.dart';
import 'package:flutter_demos/pages/base/base_stateful_page.dart';

class Stream1 extends BaseStatefulPage {
  get title => 'Stream 1';
  @override
  _Stream1State createState() => _Stream1State();
}

class _Stream1State extends BasePageState<Stream1> {
  int _counter = 0;
  final StreamController<int> _streamController = StreamController<int>();

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget buildSelfScrollBody(BuildContext context) {
    return Center(
      child: StreamBuilder<int>(
        stream: _streamController.stream,
        initialData: _counter,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          return Text('You hit me: ${snapshot.data} times');
        },
      ),
    );
  }

  @override
  Widget buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        _streamController.sink.add(++_counter);
      },
    );
  }
}
