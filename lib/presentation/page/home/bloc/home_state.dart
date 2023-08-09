import 'package:equatable/equatable.dart';
import 'package:calendar/data/model/events_info/events_info_model.dart';
import 'package:calendar/data/model/month/month_model.dart';

abstract class HomeScreenState extends Equatable {
  const HomeScreenState();

  @override
  List<Object> get props => [];
}

class HomeScreenInitialState extends HomeScreenState {}

class HomeScreenLoadingState extends HomeScreenState {}

class HomeScreenLoadedState extends HomeScreenState {
  final EventsInfoModel eventsData;
  final MonthModel monthData;

  HomeScreenLoadedState({required this.eventsData, required this.monthData});

  @override
  List<Object> get props => [eventsData, monthData];
}

class HomeScreenErrorState extends HomeScreenState {
  final String errorMessage;

  HomeScreenErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() {
    return 'HomeScreenErrorState{errorMessage: $errorMessage}';
  }
}
