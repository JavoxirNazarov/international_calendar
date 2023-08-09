// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'month_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthModel _$MonthModelFromJson(Map<String, dynamic> json) {
  return _MonthModel.fromJson(json);
}

/// @nodoc
mixin _$MonthModel {
  String get month => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseEventDays, name: 'days')
  Map<int, int> get eventDays => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MonthModelCopyWith<MonthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthModelCopyWith<$Res> {
  factory $MonthModelCopyWith(
          MonthModel value, $Res Function(MonthModel) then) =
      _$MonthModelCopyWithImpl<$Res, MonthModel>;
  @useResult
  $Res call(
      {String month,
      int year,
      @JsonKey(fromJson: parseEventDays, name: 'days')
      Map<int, int> eventDays});
}

/// @nodoc
class _$MonthModelCopyWithImpl<$Res, $Val extends MonthModel>
    implements $MonthModelCopyWith<$Res> {
  _$MonthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? eventDays = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      eventDays: null == eventDays
          ? _value.eventDays
          : eventDays // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MonthModelCopyWith<$Res>
    implements $MonthModelCopyWith<$Res> {
  factory _$$_MonthModelCopyWith(
          _$_MonthModel value, $Res Function(_$_MonthModel) then) =
      __$$_MonthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String month,
      int year,
      @JsonKey(fromJson: parseEventDays, name: 'days')
      Map<int, int> eventDays});
}

/// @nodoc
class __$$_MonthModelCopyWithImpl<$Res>
    extends _$MonthModelCopyWithImpl<$Res, _$_MonthModel>
    implements _$$_MonthModelCopyWith<$Res> {
  __$$_MonthModelCopyWithImpl(
      _$_MonthModel _value, $Res Function(_$_MonthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? eventDays = null,
  }) {
    return _then(_$_MonthModel(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      eventDays: null == eventDays
          ? _value._eventDays
          : eventDays // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MonthModel implements _MonthModel {
  const _$_MonthModel(
      {required this.month,
      required this.year,
      @JsonKey(fromJson: parseEventDays, name: 'days')
      required final Map<int, int> eventDays})
      : _eventDays = eventDays;

  factory _$_MonthModel.fromJson(Map<String, dynamic> json) =>
      _$$_MonthModelFromJson(json);

  @override
  final String month;
  @override
  final int year;
  final Map<int, int> _eventDays;
  @override
  @JsonKey(fromJson: parseEventDays, name: 'days')
  Map<int, int> get eventDays {
    if (_eventDays is EqualUnmodifiableMapView) return _eventDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_eventDays);
  }

  @override
  String toString() {
    return 'MonthModel(month: $month, year: $year, eventDays: $eventDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthModel &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality()
                .equals(other._eventDays, _eventDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, month, year,
      const DeepCollectionEquality().hash(_eventDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthModelCopyWith<_$_MonthModel> get copyWith =>
      __$$_MonthModelCopyWithImpl<_$_MonthModel>(this, _$identity);
}

abstract class _MonthModel implements MonthModel {
  const factory _MonthModel(
      {required final String month,
      required final int year,
      @JsonKey(fromJson: parseEventDays, name: 'days')
      required final Map<int, int> eventDays}) = _$_MonthModel;

  factory _MonthModel.fromJson(Map<String, dynamic> json) =
      _$_MonthModel.fromJson;

  @override
  String get month;
  @override
  int get year;
  @override
  @JsonKey(fromJson: parseEventDays, name: 'days')
  Map<int, int> get eventDays;
  @override
  @JsonKey(ignore: true)
  _$$_MonthModelCopyWith<_$_MonthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
