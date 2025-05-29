import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/featrues/setting_page/presentation/view/setting_page.dart';
import 'package:flutter/material.dart';

import '../../featrues/home_page/data/models/card_model.dart';
import '../../featrues/details_page/presentation/view/details_page.dart';
import '../../featrues/home_page/presentation/view/home_page.dart';
import '../../featrues/nav_bar_page/presentation/view/nav_bar_page.dart';
import '../../featrues/onboarding_page/presentation/view/onboarding_page.dart';
import '../../featrues/splash_page/presentation/view/splash_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: NavBarRoute.page),
        AutoRoute(page: DetailsItemRoute.page),
        AutoRoute(page: SettingRoute.page),
      ];
}
