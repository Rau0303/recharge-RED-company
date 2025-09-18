// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:recharge/features/payment/payment.dart' as _i1;
import 'package:recharge/features/success/success.dart' as _i2;

/// generated route for
/// [_i1.PaymentScreen]
class PaymentRoute extends _i3.PageRouteInfo<void> {
  const PaymentRoute({List<_i3.PageRouteInfo>? children})
    : super(PaymentRoute.name, initialChildren: children);

  static const String name = 'PaymentRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.PaymentScreen();
    },
  );
}

/// generated route for
/// [_i2.SuccessScreen]
class SuccessRoute extends _i3.PageRouteInfo<void> {
  const SuccessRoute({List<_i3.PageRouteInfo>? children})
    : super(SuccessRoute.name, initialChildren: children);

  static const String name = 'SuccessRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.SuccessScreen();
    },
  );
}
