import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/pages/setting_page/setting_page.dart';
import 'package:flutter/material.dart';

import '../data/models/card_model.dart';
import '../pages/details/details_page.dart';
import '../pages/home/home_page.dart';
import '../pages/nav_bar/nav_bar_page.dart';
import '../pages/onboarding/onboarding_page.dart';
import '../pages/splash/splash_page.dart';

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
