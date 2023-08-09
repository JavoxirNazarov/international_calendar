import 'package:calendar/data/model/month/month_model.dart';

abstract class MonthRepository {
  Future<MonthModel> getMonth();
}
