import 'package:flutter/material.dart';
import 'package:flutter_demos/helpers/screen_helper.dart';

abstract class BaseStatelessScreen extends StatelessWidget {
  get hasAppbar => true;
  get title => '';

  double rpx(double size) {
    return size * ScreenHelper().widthScale;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this.buildAppBar(context),
      body: this.buildSelfScrollBody(context) ?? SingleChildScrollView(child: this.buildBody(context)),
      floatingActionButton: this.buildFloatingActionButton(context),
    );
  }

  Widget buildAppBar(BuildContext context) {
    if(hasAppbar) {
      return PreferredSize(
        preferredSize: Size.fromHeight(rpx(88)),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          title: Text(this.title, style: TextStyle(color: Colors.black)),
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