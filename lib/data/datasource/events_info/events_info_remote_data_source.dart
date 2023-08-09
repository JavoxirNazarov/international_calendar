import 'package:dio/dio.dart';
import 'package:calendar/data/model/events_info/events_info_model.dart';

abstract class EventsInfoRemoteDataSource {
  Future<EventsInfoModel> getEventsInfo();
}

class EventsInfoRemoteDataSourceImpl implements EventsInfoRemoteDataSource {
  final Dio dio;

  EventsInfoRemoteDataSourceImpl({required this.dio});

  @override
  Future<EventsInfoModel> getEventsInfo() async {
    final response = await dio.get('/N5M6');

    if (response.statusCode == 200) {
      return EventsInfoModel.fromJson(response.data);
    } else {
      throw DioException(requestOptions: response.requestOptions);
    }
  }
}
