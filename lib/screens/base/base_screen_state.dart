import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/helpers/screen_helper.dart';

abstract class BaseScreenState<T extends StatefulWidget> extends State<T> {
  String title = "";
  bool hasAppbar = true;
  Color titleColor = Colors.black;
  Color backgroundColor = Colors.white;
  Color appBarBackgroundColor = Colors.white;
  Color appBarIconColor = Colors.black;
  List<Widget> actions = [];

  double rpx(double size) {
    return size * ScreenHelper().widthScale;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('${this.toString()} build call');
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: this.buildAppBar(context),
        body: this.buildSelfScrollBody(context) ?? SingleChildScrollView(child: this.buildBody(context)),
        floatingActionButton: this.buildFloatingActionButton(context),
      ),
    );
  }

  Future<bool> onWillPop() {
    return Future.value(true);
  }

  Widget buildAppBar(BuildContext context) {
    if (hasAppbar) {
      return PreferredSize(
        preferredSize: Size.fromHeight(rpx(88)),
        child: AppBar(
          iconTheme: IconThemeData(color: appBarIconColor),
          centerTitle: true,
          title: Text(this.title, style: TextStyle(color: titleColor)),
          backgroundColor: appBarBackgroundColor,
          actions: this.actions,
        ),
      );
    } else {
      return null;
    }
  }

  Widget buildFloatingActionButton(BuildContext context) {
    return null;
  }

  //不需要添加滚动的界面
  Widget buildSelfScrollBody(BuildContext context) {
    return null;
  }

  //需要添加滚动的界面
  Widget buildBody(BuildContext context) {
    return null;
  }
}
