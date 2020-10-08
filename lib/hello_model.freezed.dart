// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'hello_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HelloModelTearOff {
  const _$HelloModelTearOff();

// ignore: unused_element
  _HelloModel call({String greeting = '初めまして', int count = 0}) {
    return _HelloModel(
      greeting: greeting,
      count: count,
    );
  }
}

// ignore: unused_element
const $HelloModel = _$HelloModelTearOff();

mixin _$HelloModel {
  String get greeting;
  int get count;

  $HelloModelCopyWith<HelloModel> get copyWith;
}

abstract class $HelloModelCopyWith<$Res> {
  factory $HelloModelCopyWith(
          HelloModel value, $Res Function(HelloModel) then) =
      _$HelloModelCopyWithImpl<$Res>;
  $Res call({String greeting, int count});
}

class _$HelloModelCopyWithImpl<$Res> implements $HelloModelCopyWith<$Res> {
  _$HelloModelCopyWithImpl(this._value, this._then);

  final HelloModel _value;
  // ignore: unused_field
  final $Res Function(HelloModel) _then;

  @override
  $Res call({
    Object greeting = freezed,
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      greeting: greeting == freezed ? _value.greeting : greeting as String,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

abstract class _$HelloModelCopyWith<$Res> implements $HelloModelCopyWith<$Res> {
  factory _$HelloModelCopyWith(
          _HelloModel value, $Res Function(_HelloModel) then) =
      __$HelloModelCopyWithImpl<$Res>;
  @override
  $Res call({String greeting, int count});
}

class __$HelloModelCopyWithImpl<$Res> extends _$HelloModelCopyWithImpl<$Res>
    implements _$HelloModelCopyWith<$Res> {
  __$HelloModelCopyWithImpl(
      _HelloModel _value, $Res Function(_HelloModel) _then)
      : super(_value, (v) => _then(v as _HelloModel));

  @override
  _HelloModel get _value => super._value as _HelloModel;

  @override
  $Res call({
    Object greeting = freezed,
    Object count = freezed,
  }) {
    return _then(_HelloModel(
      greeting: greeting == freezed ? _value.greeting : greeting as String,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

class _$_HelloModel implements _HelloModel {
  _$_HelloModel({this.greeting = '初めまして', this.count = 0})
      : assert(greeting != null),
        assert(count != null);

  @JsonKey(defaultValue: '初めまして')
  @override
  final String greeting;
  @JsonKey(defaultValue: 0)
  @override
  final int count;

  @override
  String toString() {
    return 'HelloModel(greeting: $greeting, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HelloModel &&
            (identical(other.greeting, greeting) ||
                const DeepCollectionEquality()
                    .equals(other.greeting, greeting)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(greeting) ^
      const DeepCollectionEquality().hash(count);

  @override
  _$HelloModelCopyWith<_HelloModel> get copyWith =>
      __$HelloModelCopyWithImpl<_HelloModel>(this, _$identity);
}

abstract class _HelloModel implements HelloModel {
  factory _HelloModel({String greeting, int count}) = _$_HelloModel;

  @override
  String get greeting;
  @override
  int get count;
  @override
  _$HelloModelCopyWith<_HelloModel> get copyWith;
}
