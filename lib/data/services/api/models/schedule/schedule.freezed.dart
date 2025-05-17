// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  ScheduleData get schedule => throw _privateConstructorUsedError;
  String? get schema => throw _privateConstructorUsedError;
  Generator? get generator => throw _privateConstructorUsedError;

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call({ScheduleData schedule, String? schema, Generator? generator});

  $ScheduleDataCopyWith<$Res> get schedule;
  $GeneratorCopyWith<$Res>? get generator;
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? schema = freezed,
    Object? generator = freezed,
  }) {
    return _then(_value.copyWith(
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleData,
      schema: freezed == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as String?,
      generator: freezed == generator
          ? _value.generator
          : generator // ignore: cast_nullable_to_non_nullable
              as Generator?,
    ) as $Val);
  }

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScheduleDataCopyWith<$Res> get schedule {
    return $ScheduleDataCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value) as $Val);
    });
  }

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeneratorCopyWith<$Res>? get generator {
    if (_value.generator == null) {
      return null;
    }

    return $GeneratorCopyWith<$Res>(_value.generator!, (value) {
      return _then(_value.copyWith(generator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
          _$ScheduleImpl value, $Res Function(_$ScheduleImpl) then) =
      __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScheduleData schedule, String? schema, Generator? generator});

  @override
  $ScheduleDataCopyWith<$Res> get schedule;
  @override
  $GeneratorCopyWith<$Res>? get generator;
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
      _$ScheduleImpl _value, $Res Function(_$ScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? schema = freezed,
    Object? generator = freezed,
  }) {
    return _then(_$ScheduleImpl(
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleData,
      schema: freezed == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as String?,
      generator: freezed == generator
          ? _value.generator
          : generator // ignore: cast_nullable_to_non_nullable
              as Generator?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleImpl implements _Schedule {
  const _$ScheduleImpl({required this.schedule, this.schema, this.generator});

  factory _$ScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleImplFromJson(json);

  @override
  final ScheduleData schedule;
  @override
  final String? schema;
  @override
  final Generator? generator;

  @override
  String toString() {
    return 'Schedule(schedule: $schedule, schema: $schema, generator: $generator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.generator, generator) ||
                other.generator == generator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schedule, schema, generator);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleImplToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
      {required final ScheduleData schedule,
      final String? schema,
      final Generator? generator}) = _$ScheduleImpl;

  factory _Schedule.fromJson(Map<String, dynamic> json) =
      _$ScheduleImpl.fromJson;

  @override
  ScheduleData get schedule;
  @override
  String? get schema;
  @override
  Generator? get generator;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleData _$ScheduleDataFromJson(Map<String, dynamic> json) {
  return _ScheduleData.fromJson(json);
}

/// @nodoc
mixin _$ScheduleData {
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_url')
  String? get baseUrl => throw _privateConstructorUsedError;
  Conference get conference => throw _privateConstructorUsedError;

  /// Serializes this ScheduleData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleDataCopyWith<ScheduleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDataCopyWith<$Res> {
  factory $ScheduleDataCopyWith(
          ScheduleData value, $Res Function(ScheduleData) then) =
      _$ScheduleDataCopyWithImpl<$Res, ScheduleData>;
  @useResult
  $Res call(
      {String version,
      @JsonKey(name: 'base_url') String? baseUrl,
      Conference conference});

  $ConferenceCopyWith<$Res> get conference;
}

/// @nodoc
class _$ScheduleDataCopyWithImpl<$Res, $Val extends ScheduleData>
    implements $ScheduleDataCopyWith<$Res> {
  _$ScheduleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? baseUrl = freezed,
    Object? conference = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      conference: null == conference
          ? _value.conference
          : conference // ignore: cast_nullable_to_non_nullable
              as Conference,
    ) as $Val);
  }

  /// Create a copy of ScheduleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConferenceCopyWith<$Res> get conference {
    return $ConferenceCopyWith<$Res>(_value.conference, (value) {
      return _then(_value.copyWith(conference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleDataImplCopyWith<$Res>
    implements $ScheduleDataCopyWith<$Res> {
  factory _$$ScheduleDataImplCopyWith(
          _$ScheduleDataImpl value, $Res Function(_$ScheduleDataImpl) then) =
      __$$ScheduleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      @JsonKey(name: 'base_url') String? baseUrl,
      Conference conference});

  @override
  $ConferenceCopyWith<$Res> get conference;
}

/// @nodoc
class __$$ScheduleDataImplCopyWithImpl<$Res>
    extends _$ScheduleDataCopyWithImpl<$Res, _$ScheduleDataImpl>
    implements _$$ScheduleDataImplCopyWith<$Res> {
  __$$ScheduleDataImplCopyWithImpl(
      _$ScheduleDataImpl _value, $Res Function(_$ScheduleDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? baseUrl = freezed,
    Object? conference = null,
  }) {
    return _then(_$ScheduleDataImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      conference: null == conference
          ? _value.conference
          : conference // ignore: cast_nullable_to_non_nullable
              as Conference,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleDataImpl implements _ScheduleData {
  const _$ScheduleDataImpl(
      {required this.version,
      @JsonKey(name: 'base_url') this.baseUrl,
      required this.conference});

  factory _$ScheduleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleDataImplFromJson(json);

  @override
  final String version;
  @override
  @JsonKey(name: 'base_url')
  final String? baseUrl;
  @override
  final Conference conference;

  @override
  String toString() {
    return 'ScheduleData(version: $version, baseUrl: $baseUrl, conference: $conference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDataImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.conference, conference) ||
                other.conference == conference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version, baseUrl, conference);

  /// Create a copy of ScheduleData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDataImplCopyWith<_$ScheduleDataImpl> get copyWith =>
      __$$ScheduleDataImplCopyWithImpl<_$ScheduleDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleDataImplToJson(
      this,
    );
  }
}

abstract class _ScheduleData implements ScheduleData {
  const factory _ScheduleData(
      {required final String version,
      @JsonKey(name: 'base_url') final String? baseUrl,
      required final Conference conference}) = _$ScheduleDataImpl;

  factory _ScheduleData.fromJson(Map<String, dynamic> json) =
      _$ScheduleDataImpl.fromJson;

  @override
  String get version;
  @override
  @JsonKey(name: 'base_url')
  String? get baseUrl;
  @override
  Conference get conference;

  /// Create a copy of ScheduleData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDataImplCopyWith<_$ScheduleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Generator _$GeneratorFromJson(Map<String, dynamic> json) {
  return _Generator.fromJson(json);
}

/// @nodoc
mixin _$Generator {
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this Generator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Generator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneratorCopyWith<Generator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratorCopyWith<$Res> {
  factory $GeneratorCopyWith(Generator value, $Res Function(Generator) then) =
      _$GeneratorCopyWithImpl<$Res, Generator>;
  @useResult
  $Res call({String? name, String? version, String? url});
}

/// @nodoc
class _$GeneratorCopyWithImpl<$Res, $Val extends Generator>
    implements $GeneratorCopyWith<$Res> {
  _$GeneratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Generator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneratorImplCopyWith<$Res>
    implements $GeneratorCopyWith<$Res> {
  factory _$$GeneratorImplCopyWith(
          _$GeneratorImpl value, $Res Function(_$GeneratorImpl) then) =
      __$$GeneratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? version, String? url});
}

/// @nodoc
class __$$GeneratorImplCopyWithImpl<$Res>
    extends _$GeneratorCopyWithImpl<$Res, _$GeneratorImpl>
    implements _$$GeneratorImplCopyWith<$Res> {
  __$$GeneratorImplCopyWithImpl(
      _$GeneratorImpl _value, $Res Function(_$GeneratorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Generator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? url = freezed,
  }) {
    return _then(_$GeneratorImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneratorImpl implements _Generator {
  const _$GeneratorImpl({this.name, this.version, this.url});

  factory _$GeneratorImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneratorImplFromJson(json);

  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? url;

  @override
  String toString() {
    return 'Generator(name: $name, version: $version, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, version, url);

  /// Create a copy of Generator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratorImplCopyWith<_$GeneratorImpl> get copyWith =>
      __$$GeneratorImplCopyWithImpl<_$GeneratorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneratorImplToJson(
      this,
    );
  }
}

abstract class _Generator implements Generator {
  const factory _Generator(
      {final String? name,
      final String? version,
      final String? url}) = _$GeneratorImpl;

  factory _Generator.fromJson(Map<String, dynamic> json) =
      _$GeneratorImpl.fromJson;

  @override
  String? get name;
  @override
  String? get version;
  @override
  String? get url;

  /// Create a copy of Generator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneratorImplCopyWith<_$GeneratorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
