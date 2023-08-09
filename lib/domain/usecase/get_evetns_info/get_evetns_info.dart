import 'package:calendar/core/usecase/usecase.dart';
import 'package:calendar/data/model/events_info/events_info_model.dart';
import 'package:calendar/domain/repository/events_info/events_info_repository.dart';

class GetEventsInfo implements UseCase<EventsInfoModel, ParamsGetEventsInfo> {
  final EventsInfoRepository eventsInfoRepository;

  GetEventsInfo({required this.eventsInfoRepository});

  @override
  Future<EventsInfoModel> call(ParamsGetEventsInfo params) {
    return eventsInfoRepository.getEventsInfo();
  }
}

class ParamsGetEventsInfo {
  const ParamsGetEventsInfo();
}
