import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop/features/pages/home/home_page.dart';
import 'package:coffee_shop/features/pages/nav_bar/nav_bar_page.dart';
import 'package:coffee_shop/features/pages/onboarding/onboarding_page.dart';
import 'package:coffee_shop/features/pages/splash/splash_page.dart';

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
      ];
}
