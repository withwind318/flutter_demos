import 'package:flutter/material.dart';
import 'package:flutter_demos/helpers/screen_helper.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  double rpx(double size) {
    return size * ScreenHelper().widthScale;
  }
}
