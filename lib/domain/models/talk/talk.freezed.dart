// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'talk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Talk _$TalkFromJson(Map<String, dynamic> json) {
  return _Talk.fromJson(json);
}

/// @nodoc
mixin _$Talk {
  String get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;

  /// Serializes this Talk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Talk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TalkCopyWith<Talk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalkCopyWith<$Res> {
  factory $TalkCopyWith(Talk value, $Res Function(Talk) then) =
      _$TalkCopyWithImpl<$Res, Talk>;
  @useResult
  $Res call({String title, String? subtitle});
}

/// @nodoc
class _$TalkCopyWithImpl<$Res, $Val extends Talk>
    implements $TalkCopyWith<$Res> {
  _$TalkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Talk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TalkImplCopyWith<$Res> implements $TalkCopyWith<$Res> {
  factory _$$TalkImplCopyWith(
          _$TalkImpl value, $Res Function(_$TalkImpl) then) =
      __$$TalkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? subtitle});
}

/// @nodoc
class __$$TalkImplCopyWithImpl<$Res>
    extends _$TalkCopyWithImpl<$Res, _$TalkImpl>
    implements _$$TalkImplCopyWith<$Res> {
  __$$TalkImplCopyWithImpl(_$TalkImpl _value, $Res Function(_$TalkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Talk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
  }) {
    return _then(_$TalkImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TalkImpl implements _Talk {
  const _$TalkImpl({required this.title, required this.subtitle});

  factory _$TalkImpl.fromJson(Map<String, dynamic> json) =>
      _$$TalkImplFromJson(json);

  @override
  final String title;
  @override
  final String? subtitle;

  @override
  String toString() {
    return 'Talk(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TalkImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle);

  /// Create a copy of Talk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TalkImplCopyWith<_$TalkImpl> get copyWith =>
      __$$TalkImplCopyWithImpl<_$TalkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TalkImplToJson(
      this,
    );
  }
}

abstract class _Talk implements Talk {
  const factory _Talk(
      {required final String title,
      required final String? subtitle}) = _$TalkImpl;

  factory _Talk.fromJson(Map<String, dynamic> json) = _$TalkImpl.fromJson;

  @override
  String get title;
  @override
  String? get subtitle;

  /// Create a copy of Talk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TalkImplCopyWith<_$TalkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
