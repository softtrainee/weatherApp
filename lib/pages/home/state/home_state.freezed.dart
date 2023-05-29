// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  bool get loaderStatus => throw _privateConstructorUsedError;
  Position? get position => throw _privateConstructorUsedError;
  ResCurrentWeatherModel? get weatherModel =>
      throw _privateConstructorUsedError;
  ResForecastModel? get relatedWeatherModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool loaderStatus,
      Position? position,
      ResCurrentWeatherModel? weatherModel,
      ResForecastModel? relatedWeatherModel});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loaderStatus = null,
    Object? position = freezed,
    Object? weatherModel = freezed,
    Object? relatedWeatherModel = freezed,
  }) {
    return _then(_value.copyWith(
      loaderStatus: null == loaderStatus
          ? _value.loaderStatus
          : loaderStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      weatherModel: freezed == weatherModel
          ? _value.weatherModel
          : weatherModel // ignore: cast_nullable_to_non_nullable
              as ResCurrentWeatherModel?,
      relatedWeatherModel: freezed == relatedWeatherModel
          ? _value.relatedWeatherModel
          : relatedWeatherModel // ignore: cast_nullable_to_non_nullable
              as ResForecastModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loaderStatus,
      Position? position,
      ResCurrentWeatherModel? weatherModel,
      ResForecastModel? relatedWeatherModel});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loaderStatus = null,
    Object? position = freezed,
    Object? weatherModel = freezed,
    Object? relatedWeatherModel = freezed,
  }) {
    return _then(_$_HomeState(
      loaderStatus: null == loaderStatus
          ? _value.loaderStatus
          : loaderStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      weatherModel: freezed == weatherModel
          ? _value.weatherModel
          : weatherModel // ignore: cast_nullable_to_non_nullable
              as ResCurrentWeatherModel?,
      relatedWeatherModel: freezed == relatedWeatherModel
          ? _value.relatedWeatherModel
          : relatedWeatherModel // ignore: cast_nullable_to_non_nullable
              as ResForecastModel?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {this.loaderStatus = false,
      this.position,
      this.weatherModel,
      this.relatedWeatherModel});

  @override
  @JsonKey()
  final bool loaderStatus;
  @override
  final Position? position;
  @override
  final ResCurrentWeatherModel? weatherModel;
  @override
  final ResForecastModel? relatedWeatherModel;

  @override
  String toString() {
    return 'HomeState(loaderStatus: $loaderStatus, position: $position, weatherModel: $weatherModel, relatedWeatherModel: $relatedWeatherModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.loaderStatus, loaderStatus) ||
                other.loaderStatus == loaderStatus) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.weatherModel, weatherModel) ||
                other.weatherModel == weatherModel) &&
            (identical(other.relatedWeatherModel, relatedWeatherModel) ||
                other.relatedWeatherModel == relatedWeatherModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loaderStatus, position, weatherModel, relatedWeatherModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final bool loaderStatus,
      final Position? position,
      final ResCurrentWeatherModel? weatherModel,
      final ResForecastModel? relatedWeatherModel}) = _$_HomeState;

  @override
  bool get loaderStatus;
  @override
  Position? get position;
  @override
  ResCurrentWeatherModel? get weatherModel;
  @override
  ResForecastModel? get relatedWeatherModel;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
