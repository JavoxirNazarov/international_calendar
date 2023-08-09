import 'package:dio/dio.dart';
import 'package:calendar/data/model/month/month_model.dart';

abstract class MonthRemoteDataSource {
  Future<MonthModel> getMonth();
}

class MonthRemoteDataSourceImpl implements MonthRemoteDataSource {
  final Dio dio;

  MonthRemoteDataSourceImpl({required this.dio});

  @override
  Future<MonthModel> getMonth() async {
    final response = await dio.get('/ADYD');
    if (response.statusCode == 200) {
      return MonthModel.fromJson(response.data);
    } else {
      throw DioException(requestOptions: response.requestOptions);
    }
  }
}
