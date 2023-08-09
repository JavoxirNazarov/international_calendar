import 'package:equatable/equatable.dart';
import 'package:calendar/core/usecase/usecase.dart';
import 'package:calendar/data/model/month/month_model.dart';
import 'package:calendar/domain/repository/month/month_repository.dart';

class GetMoth implements UseCase<MonthModel, ParamsGetMonth> {
  final MonthRepository monthRepository;

  GetMoth({required this.monthRepository});

  @override
  Future<MonthModel> call(ParamsGetMonth params) {
    return monthRepository.getMonth();
  }
}

class ParamsGetMonth extends Equatable {
  ParamsGetMonth();

  @override
  List<Object> get props => [];
}
