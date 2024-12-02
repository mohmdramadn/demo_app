import 'package:flutter/material.dart';

import '../../features/orders/presentation/screens/orders_screen.dart';
import '../../features/statistics/presentation/screens/statistics_screen.dart';
import 'routes_names.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.ordersRoute:
      return MaterialPageRoute(
          builder: (context) => const OrdersScreen(), settings: settings);

    case Routes.statisticsRoute:
      return MaterialPageRoute(
          builder: (context) => const StatisticsScreen(), settings: settings);

    default:
      return MaterialPageRoute(
          builder: (context) => const OrdersScreen());
  }
}
