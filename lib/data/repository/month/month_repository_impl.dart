import 'package:dio/dio.dart';
import 'package:calendar/core/error/failure.dart';
import 'package:calendar/core/network/network_info.dart';
import 'package:calendar/data/datasource/month/month_remote_data_source.dart';
import 'package:calendar/data/model/month/month_model.dart';
import 'package:calendar/domain/repository/month/month_repository.dart';

class MonthRepositoryImpl implements MonthRepository {
  final MonthRemoteDataSource monthRemoteDataSource;
  final NetworkInfo networkInfo;

  MonthRepositoryImpl({
    required this.monthRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<MonthModel> getMonth() async {
    var isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        var response = await monthRemoteDataSource.getMonth();
        return response;
      } on DioException catch (error) {
        throw ServerFailure(error.message ?? 'semething wrong');
      }
    } else {
      throw ConnectionFailure();
    }
  }
}
