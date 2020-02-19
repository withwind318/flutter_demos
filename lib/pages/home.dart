import 'package:flutter/material.dart';
import 'package:flutter_demos/helpers/screen_helper.dart';
import 'package:flutter_demos/pages/base/base_page_state.dart';
import 'package:flutter_demos/pages/base/base_stateful_page.dart';
import 'package:flutter_demos/pages/state_management/basic_provider.dart';
import 'package:flutter_demos/pages/state_management/bloc.dart';
import 'package:flutter_demos/pages/state_management/infinite_list/post_page.dart';
import 'package:flutter_demos/pages/state_management/inherited_widget1.dart';
import 'package:flutter_demos/pages/state_management/provider.dart';
import 'package:flutter_demos/pages/state_management/redux/counter/counter.dart';
import 'package:flutter_demos/pages/state_management/stream_1.dart';
import 'package:flutter_demos/pages/state_management/ticker/ticker_page.dart';
import 'package:flutter_demos/router.dart';
import 'package:flutter_demos/theme/theme.dart';
import 'package:flutter_demos/widgets/click_item.dart';
import 'package:redux/redux.dart';

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
          title: 'InheritedWidget',
          onTap: () {
            Router.push(context, InheritedWidget1());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Provider',
          onTap: () {
            Router.push(context, ProviderDemo());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Basic provider',
          onTap: () {
            Router.push(context, BasicProvider());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Stream 1',
          onTap: () {
            Router.push(context, Stream1());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Bloc counter',
          onTap: () {
            Router.push(context, BlocPage());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Bloc ticker',
          onTap: () {
            Router.push(context, TickerPage());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Bloc infinite scroll',
          onTap: () {
            Router.push(context, PostPage());
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
        ClickItem(
          title: 'Redux counter',
          onTap: () {
            final store = Store<int>(counterReducer, initialState: 0);
            Router.push(context, ReduxCounter(title: 'Redux counter', store: store));
          },
        ),
        Divider(color: AppColors.dividerColor, height: rpx(1), indent: rpx(30)),
      ],
    );
  }
}
