import 'package:flutter/material.dart';
import 'package:flutter_demos/widgets/dialog/dialog_route.dart';

class DialogHelper {
  static showDialog(BuildContext context, Widget dialog, {bool cancelable = true}) {
    Navigator.of(context).push(
      DialogRoute(
        transitionDuration: const Duration(milliseconds: 50),
        pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
          return WillPopScope(
            child: dialog,
            onWillPop: () {
              if (cancelable) {
                return Future.value(true);
              } else {
                return Future.value(false);
              }
            },
          );
        },
      ),
    );
  }
}
