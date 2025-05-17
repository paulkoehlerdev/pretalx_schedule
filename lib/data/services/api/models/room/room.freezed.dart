// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  String get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get guid => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_id')
  String? get streamId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get capacity => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  RoomFeatures? get features => throw _privateConstructorUsedError;
  HubAssembly? get assembly => throw _privateConstructorUsedError;

  /// Serializes this Room to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call(
      {String name,
      String? slug,
      String? type,
      String guid,
      @JsonKey(name: 'stream_id') String? streamId,
      String? description,
      int? capacity,
      String? url,
      RoomFeatures? features,
      HubAssembly? assembly});

  $RoomFeaturesCopyWith<$Res>? get features;
  $HubAssemblyCopyWith<$Res>? get assembly;
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = freezed,
    Object? type = freezed,
    Object? guid = null,
    Object? streamId = freezed,
    Object? description = freezed,
    Object? capacity = freezed,
    Object? url = freezed,
    Object? features = freezed,
    Object? assembly = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as RoomFeatures?,
      assembly: freezed == assembly
          ? _value.assembly
          : assembly // ignore: cast_nullable_to_non_nullable
              as HubAssembly?,
    ) as $Val);
  }

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomFeaturesCopyWith<$Res>? get features {
    if (_value.features == null) {
      return null;
    }

    return $RoomFeaturesCopyWith<$Res>(_value.features!, (value) {
      return _then(_value.copyWith(features: value) as $Val);
    });
  }

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HubAssemblyCopyWith<$Res>? get assembly {
    if (_value.assembly == null) {
      return null;
    }

    return $HubAssemblyCopyWith<$Res>(_value.assembly!, (value) {
      return _then(_value.copyWith(assembly: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomImplCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$RoomImplCopyWith(
          _$RoomImpl value, $Res Function(_$RoomImpl) then) =
      __$$RoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? slug,
      String? type,
      String guid,
      @JsonKey(name: 'stream_id') String? streamId,
      String? description,
      int? capacity,
      String? url,
      RoomFeatures? features,
      HubAssembly? assembly});

  @override
  $RoomFeaturesCopyWith<$Res>? get features;
  @override
  $HubAssemblyCopyWith<$Res>? get assembly;
}

/// @nodoc
class __$$RoomImplCopyWithImpl<$Res>
    extends _$RoomCopyWithImpl<$Res, _$RoomImpl>
    implements _$$RoomImplCopyWith<$Res> {
  __$$RoomImplCopyWithImpl(_$RoomImpl _value, $Res Function(_$RoomImpl) _then)
      : super(_value, _then);

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = freezed,
    Object? type = freezed,
    Object? guid = null,
    Object? streamId = freezed,
    Object? description = freezed,
    Object? capacity = freezed,
    Object? url = freezed,
    Object? features = freezed,
    Object? assembly = freezed,
  }) {
    return _then(_$RoomImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as RoomFeatures?,
      assembly: freezed == assembly
          ? _value.assembly
          : assembly // ignore: cast_nullable_to_non_nullable
              as HubAssembly?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomImpl implements _Room {
  const _$RoomImpl(
      {required this.name,
      this.slug,
      this.type,
      required this.guid,
      @JsonKey(name: 'stream_id') this.streamId,
      this.description,
      this.capacity,
      this.url,
      this.features,
      this.assembly});

  factory _$RoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomImplFromJson(json);

  @override
  final String name;
  @override
  final String? slug;
  @override
  final String? type;
  @override
  final String guid;
  @override
  @JsonKey(name: 'stream_id')
  final String? streamId;
  @override
  final String? description;
  @override
  final int? capacity;
  @override
  final String? url;
  @override
  final RoomFeatures? features;
  @override
  final HubAssembly? assembly;

  @override
  String toString() {
    return 'Room(name: $name, slug: $slug, type: $type, guid: $guid, streamId: $streamId, description: $description, capacity: $capacity, url: $url, features: $features, assembly: $assembly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.features, features) ||
                other.features == features) &&
            (identical(other.assembly, assembly) ||
                other.assembly == assembly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, type, guid, streamId,
      description, capacity, url, features, assembly);

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      __$$RoomImplCopyWithImpl<_$RoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomImplToJson(
      this,
    );
  }
}

abstract class _Room implements Room {
  const factory _Room(
      {required final String name,
      final String? slug,
      final String? type,
      required final String guid,
      @JsonKey(name: 'stream_id') final String? streamId,
      final String? description,
      final int? capacity,
      final String? url,
      final RoomFeatures? features,
      final HubAssembly? assembly}) = _$RoomImpl;

  factory _Room.fromJson(Map<String, dynamic> json) = _$RoomImpl.fromJson;

  @override
  String get name;
  @override
  String? get slug;
  @override
  String? get type;
  @override
  String get guid;
  @override
  @JsonKey(name: 'stream_id')
  String? get streamId;
  @override
  String? get description;
  @override
  int? get capacity;
  @override
  String? get url;
  @override
  RoomFeatures? get features;
  @override
  HubAssembly? get assembly;

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomFeatures _$RoomFeaturesFromJson(Map<String, dynamic> json) {
  return _RoomFeatures.fromJson(json);
}

/// @nodoc
mixin _$RoomFeatures {
  String? get recording => throw _privateConstructorUsedError;

  /// Serializes this RoomFeatures to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomFeaturesCopyWith<RoomFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomFeaturesCopyWith<$Res> {
  factory $RoomFeaturesCopyWith(
          RoomFeatures value, $Res Function(RoomFeatures) then) =
      _$RoomFeaturesCopyWithImpl<$Res, RoomFeatures>;
  @useResult
  $Res call({String? recording});
}

/// @nodoc
class _$RoomFeaturesCopyWithImpl<$Res, $Val extends RoomFeatures>
    implements $RoomFeaturesCopyWith<$Res> {
  _$RoomFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomFeatures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recording = freezed,
  }) {
    return _then(_value.copyWith(
      recording: freezed == recording
          ? _value.recording
          : recording // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomFeaturesImplCopyWith<$Res>
    implements $RoomFeaturesCopyWith<$Res> {
  factory _$$RoomFeaturesImplCopyWith(
          _$RoomFeaturesImpl value, $Res Function(_$RoomFeaturesImpl) then) =
      __$$RoomFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? recording});
}

/// @nodoc
class __$$RoomFeaturesImplCopyWithImpl<$Res>
    extends _$RoomFeaturesCopyWithImpl<$Res, _$RoomFeaturesImpl>
    implements _$$RoomFeaturesImplCopyWith<$Res> {
  __$$RoomFeaturesImplCopyWithImpl(
      _$RoomFeaturesImpl _value, $Res Function(_$RoomFeaturesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomFeatures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recording = freezed,
  }) {
    return _then(_$RoomFeaturesImpl(
      recording: freezed == recording
          ? _value.recording
          : recording // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomFeaturesImpl implements _RoomFeatures {
  const _$RoomFeaturesImpl({this.recording});

  factory _$RoomFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomFeaturesImplFromJson(json);

  @override
  final String? recording;

  @override
  String toString() {
    return 'RoomFeatures(recording: $recording)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomFeaturesImpl &&
            (identical(other.recording, recording) ||
                other.recording == recording));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, recording);

  /// Create a copy of RoomFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomFeaturesImplCopyWith<_$RoomFeaturesImpl> get copyWith =>
      __$$RoomFeaturesImplCopyWithImpl<_$RoomFeaturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomFeaturesImplToJson(
      this,
    );
  }
}

abstract class _RoomFeatures implements RoomFeatures {
  const factory _RoomFeatures({final String? recording}) = _$RoomFeaturesImpl;

  factory _RoomFeatures.fromJson(Map<String, dynamic> json) =
      _$RoomFeaturesImpl.fromJson;

  @override
  String? get recording;

  /// Create a copy of RoomFeatures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomFeaturesImplCopyWith<_$RoomFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HubAssembly _$HubAssemblyFromJson(Map<String, dynamic> json) {
  return _HubAssembly.fromJson(json);
}

/// @nodoc
mixin _$HubAssembly {
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get guid => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this HubAssembly to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HubAssembly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HubAssemblyCopyWith<HubAssembly> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HubAssemblyCopyWith<$Res> {
  factory $HubAssemblyCopyWith(
          HubAssembly value, $Res Function(HubAssembly) then) =
      _$HubAssemblyCopyWithImpl<$Res, HubAssembly>;
  @useResult
  $Res call({String name, String slug, String guid, String? url});
}

/// @nodoc
class _$HubAssemblyCopyWithImpl<$Res, $Val extends HubAssembly>
    implements $HubAssemblyCopyWith<$Res> {
  _$HubAssemblyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HubAssembly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? guid = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HubAssemblyImplCopyWith<$Res>
    implements $HubAssemblyCopyWith<$Res> {
  factory _$$HubAssemblyImplCopyWith(
          _$HubAssemblyImpl value, $Res Function(_$HubAssemblyImpl) then) =
      __$$HubAssemblyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String slug, String guid, String? url});
}

/// @nodoc
class __$$HubAssemblyImplCopyWithImpl<$Res>
    extends _$HubAssemblyCopyWithImpl<$Res, _$HubAssemblyImpl>
    implements _$$HubAssemblyImplCopyWith<$Res> {
  __$$HubAssemblyImplCopyWithImpl(
      _$HubAssemblyImpl _value, $Res Function(_$HubAssemblyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HubAssembly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? guid = null,
    Object? url = freezed,
  }) {
    return _then(_$HubAssemblyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HubAssemblyImpl implements _HubAssembly {
  const _$HubAssemblyImpl(
      {required this.name, required this.slug, required this.guid, this.url});

  factory _$HubAssemblyImpl.fromJson(Map<String, dynamic> json) =>
      _$$HubAssemblyImplFromJson(json);

  @override
  final String name;
  @override
  final String slug;
  @override
  final String guid;
  @override
  final String? url;

  @override
  String toString() {
    return 'HubAssembly(name: $name, slug: $slug, guid: $guid, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HubAssemblyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, guid, url);

  /// Create a copy of HubAssembly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HubAssemblyImplCopyWith<_$HubAssemblyImpl> get copyWith =>
      __$$HubAssemblyImplCopyWithImpl<_$HubAssemblyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HubAssemblyImplToJson(
      this,
    );
  }
}

abstract class _HubAssembly implements HubAssembly {
  const factory _HubAssembly(
      {required final String name,
      required final String slug,
      required final String guid,
      final String? url}) = _$HubAssemblyImpl;

  factory _HubAssembly.fromJson(Map<String, dynamic> json) =
      _$HubAssemblyImpl.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  String get guid;
  @override
  String? get url;

  /// Create a copy of HubAssembly
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HubAssemblyImplCopyWith<_$HubAssemblyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
