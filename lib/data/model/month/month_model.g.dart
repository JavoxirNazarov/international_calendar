// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MonthModel _$$_MonthModelFromJson(Map<String, dynamic> json) =>
    _$_MonthModel(
      month: json['month'] as String,
      year: json['year'] as int,
      eventDays: parseEventDays(json['days'] as List),
    );
