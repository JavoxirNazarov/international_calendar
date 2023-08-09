import 'package:calendar/data/model/events_info/events_info_model.dart';

abstract class EventsInfoRepository {
  Future<EventsInfoModel> getEventsInfo();
}
