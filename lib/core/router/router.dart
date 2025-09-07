import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/featrues/presentation/setting_page/view/setting_page.dart';
import 'package:flutter/material.dart';

import '../../featrues/data/models/card_model.dart';
import '../../featrues/presentation/details_page/view/details_page.dart';
import '../../featrues/presentation/home_page/view/home_page.dart';
import '../../featrues/presentation/nav_bar_page/nav_bar_page.dart';
import '../../featrues/presentation/onboarding_page/onboarding_page.dart';
import '../../featrues/presentation/splash_page/splash_page.dart';

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
