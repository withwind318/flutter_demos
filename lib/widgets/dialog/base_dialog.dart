import 'package:flutter/material.dart';
import 'package:flutter_demos/widgets/base/base_stateless_widget.dart';

abstract class BaseDialog extends BaseStatelessWidget {
  final double horizontalPadding;
  final double verticalPadding;
  final double width;
  final double height;

  BaseDialog({this.horizontalPadding, this.verticalPadding, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black12,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: horizontalPadding ?? 0,
            top: verticalPadding ?? 0,
            right: horizontalPadding ?? 0,
            bottom: verticalPadding ?? 0,
          ),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(rpx(8)))),
            child: Container(
              width: width,
              height: height,
              child: this.buildSelfScrollContent(context) ?? SingleChildScrollView(child: this.buildContent(context)),
            ),
          ),
        ),
      ),
    );
  }

  //不需要添加滚动的界面
  Widget buildSelfScrollContent(BuildContext context) {
    return null;
  }

  //需要添加滚动的界面
  Widget buildContent(BuildContext context) {
    return null;
  }
}
