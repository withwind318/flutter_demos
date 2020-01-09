import 'package:flutter/material.dart';

//设计稿的尺寸
final int _designWidth = 750;
final int _designHeight = 1334;

class ScreenHelper {
  static final _singleton = new ScreenHelper._internal();

  ScreenHelper._internal();

  factory ScreenHelper() {
    return _singleton;
  }

  double devicePixelRatio;
  double screenWidth;//设备宽度dp
  double screenHeight;
  double statusBarHeight;
  double bottomBarHeight;
  double widthScale;
  double heightScale;

  void init(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    devicePixelRatio = mediaQueryData.devicePixelRatio;
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    statusBarHeight = mediaQueryData.padding.top;
    bottomBarHeight = mediaQueryData.padding.bottom;
    widthScale = screenWidth / _designWidth;
    heightScale = screenHeight / _designHeight;
  }

}