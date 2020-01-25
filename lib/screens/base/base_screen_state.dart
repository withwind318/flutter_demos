import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/helpers/screen_helper.dart';
import 'package:flutter_demos/screens/base/base_stateful_screen.dart';

abstract class BaseScreenState<T extends BaseStatefulScreen> extends State<T> {
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
        backgroundColor: Colors.white,
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
    if (widget.hasAppbar) {
      return PreferredSize(
        preferredSize: Size.fromHeight(rpx(88)),
        child: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text(widget.title, style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
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
