import 'package:auto_route/auto_route.dart';

import '../../../features/authentication/presentation/screens/sign_up_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignUpRoute.page, initial: true),
      ];
}
