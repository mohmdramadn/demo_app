part of 'orders_bloc.dart';

sealed class OrdersEvent extends Equatable {
  const OrdersEvent();
}

class OrderRequested extends OrdersEvent {
  @override
  List<Object?> get props => [];
}

class OrderLoaded extends OrdersEvent {
  @override
  List<Object?> get props => [];
}

class Failure extends OrdersEvent {
  const Failure({required this.error});

  final String error;

  @override
  List<Object?> get props => [];
}
