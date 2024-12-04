import 'package:demo_app/core/routes/routes_names.dart';
import 'package:demo_app/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/json_service.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OrdersBloc(
          jsonService: const JsonService(),
        )..add(OrderRequested()),
        child: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            return SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('Total Orders :'),
                      Text(state.totalCount.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Average Price :'),
                      Text(state.averagePrice.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Number Of Returns :'),
                      Text(state.noOfReturns.toString()),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(
                        context, Routes.statisticsRoute,
                        arguments: state.orders),
                    child: const Text('Show Diagram'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
