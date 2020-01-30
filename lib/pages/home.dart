import 'package:flutter/material.dart';
import 'package:flutter_demos/helpers/screen_helper.dart';
import 'package:flutter_demos/router.dart';
import 'package:flutter_demos/pages/base/base_page_state.dart';
import 'package:flutter_demos/pages/base/base_stateful_page.dart';
import 'package:flutter_demos/pages/basic_provider.dart';
import 'package:flutter_demos/pages/inherited_widget1.dart';
import 'package:flutter_demos/pages/provider.dart';
import 'package:flutter_demos/pages/stream_1.dart';
import 'package:flutter_demos/theme/theme.dart';
import 'package:flutter_demos/widgets/click_item.dart';

class Home extends BaseStatefulPage {
  get title => 'Basic demos';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends BasePageState<Home> {
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
        ClickItem(
          title: 'Stream demo 1',
          onTap: () {
            Router.push(context, Stream1());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
      ],
    );
  }
}