// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InstanceApiModel _$InstanceApiModelFromJson(Map<String, dynamic> json) {
  return _InstanceApiModel.fromJson(json);
}

/// @nodoc
mixin _$InstanceApiModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this InstanceApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstanceApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstanceApiModelCopyWith<InstanceApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceApiModelCopyWith<$Res> {
  factory $InstanceApiModelCopyWith(
          InstanceApiModel value, $Res Function(InstanceApiModel) then) =
      _$InstanceApiModelCopyWithImpl<$Res, InstanceApiModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$InstanceApiModelCopyWithImpl<$Res, $Val extends InstanceApiModel>
    implements $InstanceApiModelCopyWith<$Res> {
  _$InstanceApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstanceApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstanceApiModelImplCopyWith<$Res>
    implements $InstanceApiModelCopyWith<$Res> {
  factory _$$InstanceApiModelImplCopyWith(_$InstanceApiModelImpl value,
          $Res Function(_$InstanceApiModelImpl) then) =
      __$$InstanceApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$InstanceApiModelImplCopyWithImpl<$Res>
    extends _$InstanceApiModelCopyWithImpl<$Res, _$InstanceApiModelImpl>
    implements _$$InstanceApiModelImplCopyWith<$Res> {
  __$$InstanceApiModelImplCopyWithImpl(_$InstanceApiModelImpl _value,
      $Res Function(_$InstanceApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstanceApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$InstanceApiModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstanceApiModelImpl implements _InstanceApiModel {
  const _$InstanceApiModelImpl({required this.name, required this.url});

  factory _$InstanceApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstanceApiModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'InstanceApiModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstanceApiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of InstanceApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstanceApiModelImplCopyWith<_$InstanceApiModelImpl> get copyWith =>
      __$$InstanceApiModelImplCopyWithImpl<_$InstanceApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstanceApiModelImplToJson(
      this,
    );
  }
}

abstract class _InstanceApiModel implements InstanceApiModel {
  const factory _InstanceApiModel(
      {required final String name,
      required final String url}) = _$InstanceApiModelImpl;

  factory _InstanceApiModel.fromJson(Map<String, dynamic> json) =
      _$InstanceApiModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of InstanceApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstanceApiModelImplCopyWith<_$InstanceApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
