import 'package:flutter/material.dart';
import 'package:flutter_demos/helpers/screen_helper.dart';
import 'package:flutter_demos/router.dart';
import 'package:flutter_demos/screens/base/base_screen_state.dart';
import 'package:flutter_demos/screens/inherited_widget.dart';
import 'package:flutter_demos/screens/provider.dart';
import 'package:flutter_demos/theme/theme.dart';
import 'package:flutter_demos/widgets/click_item.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends BaseScreenState<Home> {

  @override
  void initState() {
    super.initState();
    title = 'Basic Demos';
  }

  @override
  Widget build(BuildContext context) {
    ScreenHelper().init(context);
    return super.build(context);
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        ClickItem(
          title: 'InheritedWidget Demo',
          onTap: () {
            Router.push(context, InheritedWidgetDemo());
          },
        ),
        Divider(color: AppColor.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Provider Demo',
          onTap: () {
            Router.push(context, ProviderDemo());
          },
        ),
        Divider(color: AppColor.dividerColor, height: rpx(1), indent: rpx(30)),
      ],
    );
  }

}