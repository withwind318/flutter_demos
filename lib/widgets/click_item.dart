import 'package:flutter/material.dart';
import 'package:flutter_demos/theme/theme.dart';
import 'package:flutter_demos/widgets/base/base_stateless_widget.dart';


class ClickItem extends BaseStatelessWidget {
  final String title;
  final Function onTap;

  ClickItem({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: AppColor.grayBackground,
      onTap: onTap,
      child: Container(
        height: rpx(100),
        child: Padding(
          padding: EdgeInsets.only(left: rpx(30), right: rpx(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title, style: TextStyle(color: AppColor.mainBlackText, fontSize: rpx(30))),
              Image.asset('assets/images/ic_go.png', width: rpx(16), height: rpx(30)),
            ],
          ),
        ),
      ),
    );
  }
}
