part of 'statistics_bloc.dart';

final class StatisticsState extends Equatable {
  const StatisticsState({required this.chartDates, this.isLoading});

  final List<ChartDates> chartDates;
  final bool? isLoading;

  StatisticsState copyWith({List<ChartDates>? chartDates, bool? isLoading}) {
    return StatisticsState(
        chartDates: chartDates ?? this.chartDates,
        isLoading: isLoading ?? true);
  }

  @override
  List<Object> get props => [chartDates, isLoading ?? true];
}
