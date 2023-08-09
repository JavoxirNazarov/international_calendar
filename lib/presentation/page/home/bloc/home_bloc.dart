import 'package:bloc/bloc.dart';
import 'package:calendar/core/error/failure.dart';
import 'package:calendar/domain/usecase/get_evetns_info/get_evetns_info.dart';
import 'package:calendar/domain/usecase/get_moth/get_month.dart';
import 'package:calendar/presentation/page/home/bloc/home_event.dart';
import 'package:calendar/presentation/page/home/bloc/home_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final GetEventsInfo getEventsInfo;
  final GetMoth getMoth;

  HomeScreenBloc({
    required this.getEventsInfo,
    required this.getMoth,
  }) : super(HomeScreenInitialState()) {
    on<HomeScreenLoadEvent>(_init);
  }

  Future<void> _init(
    HomeScreenLoadEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(HomeScreenLoadingState());

    try {
      final eventsData = await getEventsInfo.call(ParamsGetEventsInfo());
      final monthData = await getMoth.call(ParamsGetMonth());

      emit(HomeScreenLoadedState(eventsData: eventsData, monthData: monthData));
    } on Failure catch (err) {
      emit(HomeScreenErrorState(errorMessage: err.errorMessage));
    } catch (err) {
      emit(HomeScreenErrorState(errorMessage: err.toString()));
    }
  }
}
