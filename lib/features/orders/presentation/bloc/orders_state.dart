part of 'orders_bloc.dart';

final class OrdersState extends Equatable {
  const OrdersState({
    required this.orders,
    this.totalCount,
    this.averagePrice,
    this.noOfReturns,
    this.error,
  });

  final List<Order> orders;
  final int? totalCount;
  final num? averagePrice;
  final num? noOfReturns;
  final String? error;

  OrdersState copyWith({
    List<Order>? orders,
    int? totalCount,
    num? averagePrice,
    num? noOfReturns,
    String? error,
  }) {
    return OrdersState(
      orders: orders ?? this.orders,
      totalCount: totalCount ?? this.totalCount,
      averagePrice: averagePrice ?? this.averagePrice,
      noOfReturns: noOfReturns ?? this.noOfReturns,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [
        orders,
        totalCount ?? 0,
        averagePrice ?? 0.0,
        noOfReturns ?? 0,
        error ?? ''
      ];
}
