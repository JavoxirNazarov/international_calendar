import 'package:freezed_annotation/freezed_annotation.dart';

part 'month_model.freezed.dart';
part 'month_model.g.dart';

Map<int, int> parseEventDays(List<dynamic> jsonDays) {
  final Map<int, int> map = {};

  jsonDays.forEach((json) {
    final key = json['day'] as int;
    final value = json['type'] as int;
    map[key] = value;
  });

  return map;
}

@Freezed(toJson: false)
class MonthModel with _$MonthModel {
  const factory MonthModel({
    required String month,
    required int year,
    @JsonKey(fromJson: parseEventDays, name: 'days')
    required Map<int, int> eventDays,
  }) = _MonthModel;

  factory MonthModel.fromJson(Map<String, Object?> json) =>
      _$MonthModelFromJson(json);
}
