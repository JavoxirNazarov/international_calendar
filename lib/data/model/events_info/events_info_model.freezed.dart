// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsInfoModel {
  Map<int, Color> get codeColorMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsInfoModelCopyWith<EventsInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsInfoModelCopyWith<$Res> {
  factory $EventsInfoModelCopyWith(
          EventsInfoModel value, $Res Function(EventsInfoModel) then) =
      _$EventsInfoModelCopyWithImpl<$Res, EventsInfoModel>;
  @useResult
  $Res call({Map<int, Color> codeColorMap});
}

/// @nodoc
class _$EventsInfoModelCopyWithImpl<$Res, $Val extends EventsInfoModel>
    implements $EventsInfoModelCopyWith<$Res> {
  _$EventsInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeColorMap = null,
  }) {
    return _then(_value.copyWith(
      codeColorMap: null == codeColorMap
          ? _value.codeColorMap
          : codeColorMap // ignore: cast_nullable_to_non_nullable
              as Map<int, Color>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventsInfoModelCopyWith<$Res>
    implements $EventsInfoModelCopyWith<$Res> {
  factory _$$_EventsInfoModelCopyWith(
          _$_EventsInfoModel value, $Res Function(_$_EventsInfoModel) then) =
      __$$_EventsInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, Color> codeColorMap});
}

/// @nodoc
class __$$_EventsInfoModelCopyWithImpl<$Res>
    extends _$EventsInfoModelCopyWithImpl<$Res, _$_EventsInfoModel>
    implements _$$_EventsInfoModelCopyWith<$Res> {
  __$$_EventsInfoModelCopyWithImpl(
      _$_EventsInfoModel _value, $Res Function(_$_EventsInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeColorMap = null,
  }) {
    return _then(_$_EventsInfoModel(
      codeColorMap: null == codeColorMap
          ? _value._codeColorMap
          : codeColorMap // ignore: cast_nullable_to_non_nullable
              as Map<int, Color>,
    ));
  }
}

/// @nodoc

class _$_EventsInfoModel implements _EventsInfoModel {
  const _$_EventsInfoModel({required final Map<int, Color> codeColorMap})
      : _codeColorMap = codeColorMap;

  final Map<int, Color> _codeColorMap;
  @override
  Map<int, Color> get codeColorMap {
    if (_codeColorMap is EqualUnmodifiableMapView) return _codeColorMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_codeColorMap);
  }

  @override
  String toString() {
    return 'EventsInfoModel(codeColorMap: $codeColorMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsInfoModel &&
            const DeepCollectionEquality()
                .equals(other._codeColorMap, _codeColorMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_codeColorMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsInfoModelCopyWith<_$_EventsInfoModel> get copyWith =>
      __$$_EventsInfoModelCopyWithImpl<_$_EventsInfoModel>(this, _$identity);
}

abstract class _EventsInfoModel implements EventsInfoModel {
  const factory _EventsInfoModel(
      {required final Map<int, Color> codeColorMap}) = _$_EventsInfoModel;

  @override
  Map<int, Color> get codeColorMap;
  @override
  @JsonKey(ignore: true)
  _$$_EventsInfoModelCopyWith<_$_EventsInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
