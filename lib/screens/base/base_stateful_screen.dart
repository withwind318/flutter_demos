import 'package:flutter/widgets.dart';

abstract class BaseStatefulScreen extends StatefulWidget {
  get hasAppbar => true;

  get title => '';
}
