import 'package:demo_app/core/routes/routes_names.dart';
import 'package:demo_app/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/services/json_service.dart';
import '../../../../core/styling/app_colors.dart';
import '../widgets/stats_card.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => OrdersBloc(
            jsonService: const JsonService(),
          )..add(OrderRequested()),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return const WebView();
              } else {
                return const _MobileView();
              }
            },
          ),
        ),
      ),
    );
  }
}

class _MobileView extends StatelessWidget {
  const _MobileView();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return SizedBox(
            //height: MediaQuery.sizeOf(context).height - 100,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: !kIsWeb ? 50 : 0),
                StatsCard(
                  value: state.totalCount.toString(),
                  title: Constants.totalOrders,
                ),
                const SizedBox(height: 30),
                StatsCard(
                  value: state.averagePrice.toString(),
                  title: Constants.averagePrice,
                ),
                const SizedBox(height: 30),
                StatsCard(
                  value: state.noOfReturns.toString(),
                  title: Constants.numberOfReturns,
                ),
                !kIsWeb ? const Spacer() : Container(),
                Stack(
                  children: [
                    Positioned(
                      left: 15,
                      bottom: 13,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: SizedBox(
                          height: 60,
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const AppColors().secondaryColor,
                              textStyle: const TextStyle(color: Colors.white),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            onPressed: () => Navigator.pushNamed(
                                context, Routes.statisticsRoute,
                                arguments: state.orders),
                            child: const Text(''),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 60,
                        width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.2),
                            textStyle: const TextStyle(color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: const BorderSide(
                                    color: Colors.white, width: 2)),
                          ),
                          onPressed: () => Navigator.pushNamed(
                              context, Routes.statisticsRoute,
                              arguments: state.orders),
                          child: Text(Constants.showDiagram,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: StatsCard(
                      value: state.totalCount.toString(),
                      title: Constants.totalOrders,
                    ),
                  ),
                  //const SizedBox(width: 30),
                  Expanded(
                    child: StatsCard(
                      value: state.averagePrice.toString(),
                      title: Constants.averagePrice,
                    ),
                  ),
                  //const SizedBox(width: 30),
                  Expanded(
                    child: StatsCard(
                      value: state.noOfReturns.toString(),
                      title: Constants.numberOfReturns,
                    ),
                  ),
                  //const SizedBox(width: 50),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,
                        bottom: 13,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            height: 60,
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const AppColors().secondaryColor,
                                textStyle: const TextStyle(color: Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              onPressed: () => Navigator.pushNamed(
                                  context, Routes.statisticsRoute,
                                  arguments: state.orders),
                              child: const Text(''),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 60,
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.2),
                              textStyle: const TextStyle(color: Colors.white),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: const BorderSide(
                                      color: Colors.white, width: 2)),
                            ),
                            onPressed: () => Navigator.pushNamed(
                                context, Routes.statisticsRoute,
                                arguments: state.orders),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Constants.showDiagram,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                const Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
