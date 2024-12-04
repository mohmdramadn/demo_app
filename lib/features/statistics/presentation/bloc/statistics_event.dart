part of 'statistics_bloc.dart';

sealed class StatisticsEvent extends Equatable {
  const StatisticsEvent();
}

final class StatisticsInitial extends StatisticsEvent {
  const StatisticsInitial({required this.orders});

  final List<Order> orders;

  @override
  List<Object> get props => [orders];
}
