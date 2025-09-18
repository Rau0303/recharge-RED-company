import 'package:auto_route/auto_route.dart';
import 'package:recharge/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: PaymentRoute.page, path: '/payment', initial: true),
    AutoRoute(page: SuccessRoute.page, path: '/success')
  ];
}