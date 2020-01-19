import 'package:flutter/material.dart';
import 'package:flutter_demos/theme/theme.dart';
import 'package:flutter_demos/widgets/dialog/base_dialog.dart';
import 'package:flutter_demos/widgets/dialog/dialog_button.dart';

class Dialog1Btn extends BaseDialog {
  final String content;
  final String btnText;
  final Function onBtnPress;
  final double width;

  Dialog1Btn({this.content, this.btnText, this.onBtnPress, this.width = 320}) : super(width: width);

  @override
  Widget buildSelfScrollContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: rpx(40), vertical: rpx(60)),
          child: Text(
            content ?? '',
            style: TextStyle(color: AppColors.mainBlackText, fontSize: rpx(30), height: 1.3),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: DialogButton(
                title: btnText,
                onPressed: () {
                  if (onBtnPress != null) {
                    onBtnPress();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
