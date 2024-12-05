import 'package:demo_app/features/statistics/domain/models/chart_dates.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../orders/domain/models/orders.dart';

part 'statistics_event.dart';

part 'statistics_state.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  StatisticsBloc() : super(const StatisticsState(chartDates: [])) {
    on<StatisticsInitial>(_onStatisticsInitial);
  }

  void _onStatisticsInitial(
      StatisticsInitial event, Emitter<StatisticsState> emit) {
    List<ChartDates> listOfDates = [];
    emit(state.copyWith(isLoading: true));
    for (var order in event.orders) {
      var date = _convertStringToDateTime(order.registered);
      var chartDate = _convertToChartDatesObject(date, 1);
      listOfDates.add(chartDate);
    }

    var sortedDates = _sortDates(listOfDates);
    var sortedSimilarDates = _groupSimilarDates(sortedDates);
    emit(state.copyWith(isLoading: false,chartDates: sortedSimilarDates));
  }

  DateTime _convertStringToDateTime(String date) {
    var dateTimeObject = DateTime.parse(date);
    DateTime normalizedDate =
        DateTime(dateTimeObject.year, dateTimeObject.month, dateTimeObject.day);

    return normalizedDate;
  }

  ChartDates _convertToChartDatesObject(DateTime date, int noOfOrders) {
    return ChartDates(date: date, noOfOrdersPerDay: noOfOrders);
  }

  List<ChartDates> _sortDates(List<ChartDates> dates) {
    dates.sort((a, b) => a.date.compareTo(b.date));
    return List.from(dates);
  }

  List<ChartDates> _groupSimilarDates(List<ChartDates> dates) {
    Map<DateTime, ChartDates> groupedData = {};

    for (var entry in dates) {
      groupedData.update(
        entry.date,
            (existingEntry) => ChartDates(
          date: entry.date,
          noOfOrdersPerDay: existingEntry.noOfOrdersPerDay +
              entry.noOfOrdersPerDay +
              1,
        ),
        ifAbsent: () => ChartDates(
          date: entry.date,
          noOfOrdersPerDay: entry.noOfOrdersPerDay,
        ),
      );
    }

    return groupedData.values.toList();
  }
}
