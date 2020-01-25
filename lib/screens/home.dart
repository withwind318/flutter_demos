import 'package:flutter/material.dart';
import 'package:flutter_demos/helpers/screen_helper.dart';
import 'package:flutter_demos/router.dart';
import 'package:flutter_demos/screens/base/base_screen_state.dart';
import 'package:flutter_demos/screens/base/base_stateful_screen.dart';
import 'package:flutter_demos/screens/basic_provider.dart';
import 'package:flutter_demos/screens/inherited_widget1.dart';
import 'package:flutter_demos/screens/provider.dart';
import 'package:flutter_demos/theme/theme.dart';
import 'package:flutter_demos/widgets/click_item.dart';

class Home extends BaseStatefulScreen {
  get title => 'Basic demos';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends BaseScreenState<Home> {
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
          title: 'InheritedWidget demo',
          onTap: () {
            Router.push(context, InheritedWidget1());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Provider demo',
          onTap: () {
            Router.push(context, ProviderDemo());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Basic provider demo',
          onTap: () {
            Router.push(context, BasicProvider());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
      ],
    );
  }
}
