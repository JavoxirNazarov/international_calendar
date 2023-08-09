import 'package:bloc/bloc.dart';
import 'package:calendar/core/error/failure.dart';
import 'package:calendar/data/model/events_info/events_info_model.dart';
import 'package:calendar/data/model/month/month_model.dart';
import 'package:calendar/domain/usecase/get_evetns_info/get_evetns_info.dart';
import 'package:calendar/domain/usecase/get_moth/get_month.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final GetEventsInfo getEventsInfo;
  final GetMoth getMoth;

  HomeScreenBloc({
    required this.getEventsInfo,
    required this.getMoth,
  }) : super(HomeScreenState.initial()) {
    on<Init>(_init);
  }

  Future<void> _init(
    Init event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(HomeScreenState.loading());

    try {
      final eventsData = await getEventsInfo.call(ParamsGetEventsInfo());
      final monthData = await getMoth.call(ParamsGetMonth());

      emit(HomeScreenState.loaded(
        eventsData: eventsData,
        monthData: monthData,
      ));
    } on Failure catch (err) {
      emit(HomeScreenState.error(errorMessage: err.errorMessage));
    } catch (err) {
      emit(HomeScreenState.error(errorMessage: err.toString()));
    }
  }
}
