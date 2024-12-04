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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) =>
              StatisticsBloc()..add(StatisticsInitial(orders: widget.orders)),
          child: Builder(builder: (context) {
            return BlocBuilder<StatisticsBloc, StatisticsState>(
              builder: (context, state) {
                return SingleChildScrollView(
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        state.isLoading ?? false
                            ? const CircularProgressIndicator()
                            : OrdersChart(dates: state.chartDates),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}
