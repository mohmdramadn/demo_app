import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/json_service.dart';
import '../../domain/models/orders.dart';

part 'orders_event.dart';

part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc({required JsonService jsonService})
      : _jsonService = jsonService,
        super(const OrdersState(orders: [])) {
    on<OrderRequested>(_onOrderListRequested);
  }

  final JsonService _jsonService;

  void _onOrderListRequested(
      OrderRequested event, Emitter<OrdersState> emit) async {
    try {
      var orders = await _jsonService.readJson();

      var averagePriceAndNoOfReturns = _iterateOnOrders(orders);

      emit(
        state.copyWith(
          orders: orders,
          totalCount: orders.length,
          averagePrice: averagePriceAndNoOfReturns.$1,
          noOfReturns: averagePriceAndNoOfReturns.$2,
        ),
      );
    } catch (e) {
      emit(state.copyWith(orders: [], error: e.toString()));
    }
  }

  (num averagePrice, num noOfReturns) _iterateOnOrders(List<Order> orders) {
    num ordersPriceSum = 0;
    num noOfReturns = 0;
    for (var order in orders) {
      var priceWithoutDollarSign =
          order.price.replaceAll('\$', '').replaceAll(',', '');
      var price = double.tryParse(priceWithoutDollarSign);
      ordersPriceSum += price ?? 0.0;

      if (order.status == 'RETURNED') noOfReturns++;
    }

    var averagePrice = (ordersPriceSum / orders.length).roundToDouble();

    return (averagePrice, noOfReturns);
  }
}
