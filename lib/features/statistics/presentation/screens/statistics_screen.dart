import 'package:demo_app/features/statistics/presentation/bloc/statistics_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../orders/domain/models/orders.dart';
import '../widgets/orders_chart.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key, required this.orders});

  final List<Order> orders;

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) =>
              StatisticsBloc()..add(StatisticsInitial(orders: widget.orders)),
          child: Builder(builder: (context) {
            return BlocBuilder<StatisticsBloc, StatisticsState>(
              builder: (context, state) {
                return state.isLoading ?? false
                    ? const Center(child: CircularProgressIndicator())
                    : LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          // Use constraints.maxWidth to decide the aspect ratio
                          double aspect;
                          if (constraints.maxWidth > 800) {
                            aspect = 2.2;
                          } else if (constraints.maxWidth > 600) {
                            aspect = 1.9;
                          } else if (constraints.maxWidth > 300) {
                            aspect = 1.4;
                          } else {
                            aspect = 1.0; // Default aspect
                          }

                          return SingleChildScrollView(
                            child: Center(
                              child: OrdersChart(
                                dates: state.chartDates,
                                aspect: aspect,
                              ),
                            ),
                          );
                        },
                      );
              },
            );
          }),
        ),
      ),
    );
  }
}
