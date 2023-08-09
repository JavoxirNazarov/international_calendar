import 'package:dio/dio.dart';
import 'package:calendar/core/error/failure.dart';
import 'package:calendar/core/network/network_info.dart';
import 'package:calendar/data/datasource/events_info/events_info_remote_data_source.dart';
import 'package:calendar/data/model/events_info/events_info_model.dart';
import 'package:calendar/domain/repository/events_info/events_info_repository.dart';

class EventsInfoRepositoryImpl implements EventsInfoRepository {
  final EventsInfoRemoteDataSource eventsInfoRemoteDataSource;
  final NetworkInfo networkInfo;

  EventsInfoRepositoryImpl({
    required this.eventsInfoRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<EventsInfoModel> getEventsInfo() async {
    var isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        var response = await eventsInfoRemoteDataSource.getEventsInfo();
        return response;
      } on DioException catch (error) {
        throw ServerFailure(error.message ?? 'semething wrong');
      }
    } else {
      throw ConnectionFailure();
    }
  }
}
