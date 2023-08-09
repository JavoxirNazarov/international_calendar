import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:calendar/core/extensions/color.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_info_model.freezed.dart';

@Freezed(toJson: false, fromJson: false)
class EventsInfoModel with _$EventsInfoModel {
  const factory EventsInfoModel({required Map<int, Color> codeColorMap}) =
      _EventsInfoModel;

  factory EventsInfoModel.fromJson(List<dynamic> jsonList) {
    final Map<int, Color> map = {};

    jsonList.forEach((json) {
      final key = json['type'] as int;
      final Color value = HexColor.fromHex(json['color'] as String);
      map[key] = value;
    });

    return EventsInfoModel(codeColorMap: map);
  }
}
