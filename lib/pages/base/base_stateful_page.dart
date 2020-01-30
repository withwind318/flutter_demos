import 'package:flutter/widgets.dart';

abstract class BaseStatefulPage extends StatefulWidget {
  get hasAppbar => true;

  get title => '';
}
