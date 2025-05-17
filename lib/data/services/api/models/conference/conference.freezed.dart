// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Conference _$ConferenceFromJson(Map<String, dynamic> json) {
  return _Conference.fromJson(json);
}

/// @nodoc
mixin _$Conference {
  String get acronym => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'daysCount')
  int get daysCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeslot_duration')
  String get timeslotDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_zone_name')
  String? get timeZoneName => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  Colors? get colors => throw _privateConstructorUsedError;
  List<String>? get keywords => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<Track>? get tracks => throw _privateConstructorUsedError;
  List<Room>? get rooms => throw _privateConstructorUsedError;
  Map<String, dynamic>? get meta => throw _privateConstructorUsedError;
  List<Day> get days => throw _privateConstructorUsedError;

  /// Serializes this Conference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Conference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConferenceCopyWith<Conference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceCopyWith<$Res> {
  factory $ConferenceCopyWith(
          Conference value, $Res Function(Conference) then) =
      _$ConferenceCopyWithImpl<$Res, Conference>;
  @useResult
  $Res call(
      {String acronym,
      String title,
      String? description,
      String start,
      String end,
      @JsonKey(name: 'daysCount') int daysCount,
      @JsonKey(name: 'timeslot_duration') String timeslotDuration,
      @JsonKey(name: 'time_zone_name') String? timeZoneName,
      String? logo,
      Colors? colors,
      List<String>? keywords,
      String? url,
      List<Track>? tracks,
      List<Room>? rooms,
      Map<String, dynamic>? meta,
      List<Day> days});

  $ColorsCopyWith<$Res>? get colors;
}

/// @nodoc
class _$ConferenceCopyWithImpl<$Res, $Val extends Conference>
    implements $ConferenceCopyWith<$Res> {
  _$ConferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Conference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acronym = null,
    Object? title = null,
    Object? description = freezed,
    Object? start = null,
    Object? end = null,
    Object? daysCount = null,
    Object? timeslotDuration = null,
    Object? timeZoneName = freezed,
    Object? logo = freezed,
    Object? colors = freezed,
    Object? keywords = freezed,
    Object? url = freezed,
    Object? tracks = freezed,
    Object? rooms = freezed,
    Object? meta = freezed,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      acronym: null == acronym
          ? _value.acronym
          : acronym // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      daysCount: null == daysCount
          ? _value.daysCount
          : daysCount // ignore: cast_nullable_to_non_nullable
              as int,
      timeslotDuration: null == timeslotDuration
          ? _value.timeslotDuration
          : timeslotDuration // ignore: cast_nullable_to_non_nullable
              as String,
      timeZoneName: freezed == timeZoneName
          ? _value.timeZoneName
          : timeZoneName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Colors?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
    ) as $Val);
  }

  /// Create a copy of Conference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorsCopyWith<$Res>? get colors {
    if (_value.colors == null) {
      return null;
    }

    return $ColorsCopyWith<$Res>(_value.colors!, (value) {
      return _then(_value.copyWith(colors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConferenceImplCopyWith<$Res>
    implements $ConferenceCopyWith<$Res> {
  factory _$$ConferenceImplCopyWith(
          _$ConferenceImpl value, $Res Function(_$ConferenceImpl) then) =
      __$$ConferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String acronym,
      String title,
      String? description,
      String start,
      String end,
      @JsonKey(name: 'daysCount') int daysCount,
      @JsonKey(name: 'timeslot_duration') String timeslotDuration,
      @JsonKey(name: 'time_zone_name') String? timeZoneName,
      String? logo,
      Colors? colors,
      List<String>? keywords,
      String? url,
      List<Track>? tracks,
      List<Room>? rooms,
      Map<String, dynamic>? meta,
      List<Day> days});

  @override
  $ColorsCopyWith<$Res>? get colors;
}

/// @nodoc
class __$$ConferenceImplCopyWithImpl<$Res>
    extends _$ConferenceCopyWithImpl<$Res, _$ConferenceImpl>
    implements _$$ConferenceImplCopyWith<$Res> {
  __$$ConferenceImplCopyWithImpl(
      _$ConferenceImpl _value, $Res Function(_$ConferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Conference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acronym = null,
    Object? title = null,
    Object? description = freezed,
    Object? start = null,
    Object? end = null,
    Object? daysCount = null,
    Object? timeslotDuration = null,
    Object? timeZoneName = freezed,
    Object? logo = freezed,
    Object? colors = freezed,
    Object? keywords = freezed,
    Object? url = freezed,
    Object? tracks = freezed,
    Object? rooms = freezed,
    Object? meta = freezed,
    Object? days = null,
  }) {
    return _then(_$ConferenceImpl(
      acronym: null == acronym
          ? _value.acronym
          : acronym // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
      daysCount: null == daysCount
          ? _value.daysCount
          : daysCount // ignore: cast_nullable_to_non_nullable
              as int,
      timeslotDuration: null == timeslotDuration
          ? _value.timeslotDuration
          : timeslotDuration // ignore: cast_nullable_to_non_nullable
              as String,
      timeZoneName: freezed == timeZoneName
          ? _value.timeZoneName
          : timeZoneName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Colors?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: freezed == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
      rooms: freezed == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
      meta: freezed == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConferenceImpl implements _Conference {
  const _$ConferenceImpl(
      {required this.acronym,
      required this.title,
      this.description,
      required this.start,
      required this.end,
      @JsonKey(name: 'daysCount') required this.daysCount,
      @JsonKey(name: 'timeslot_duration') required this.timeslotDuration,
      @JsonKey(name: 'time_zone_name') this.timeZoneName,
      this.logo,
      this.colors,
      final List<String>? keywords,
      this.url,
      final List<Track>? tracks,
      final List<Room>? rooms,
      final Map<String, dynamic>? meta,
      required final List<Day> days})
      : _keywords = keywords,
        _tracks = tracks,
        _rooms = rooms,
        _meta = meta,
        _days = days;

  factory _$ConferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConferenceImplFromJson(json);

  @override
  final String acronym;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String start;
  @override
  final String end;
  @override
  @JsonKey(name: 'daysCount')
  final int daysCount;
  @override
  @JsonKey(name: 'timeslot_duration')
  final String timeslotDuration;
  @override
  @JsonKey(name: 'time_zone_name')
  final String? timeZoneName;
  @override
  final String? logo;
  @override
  final Colors? colors;
  final List<String>? _keywords;
  @override
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? url;
  final List<Track>? _tracks;
  @override
  List<Track>? get tracks {
    final value = _tracks;
    if (value == null) return null;
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Room>? _rooms;
  @override
  List<Room>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _meta;
  @override
  Map<String, dynamic>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Day> _days;
  @override
  List<Day> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'Conference(acronym: $acronym, title: $title, description: $description, start: $start, end: $end, daysCount: $daysCount, timeslotDuration: $timeslotDuration, timeZoneName: $timeZoneName, logo: $logo, colors: $colors, keywords: $keywords, url: $url, tracks: $tracks, rooms: $rooms, meta: $meta, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConferenceImpl &&
            (identical(other.acronym, acronym) || other.acronym == acronym) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.daysCount, daysCount) ||
                other.daysCount == daysCount) &&
            (identical(other.timeslotDuration, timeslotDuration) ||
                other.timeslotDuration == timeslotDuration) &&
            (identical(other.timeZoneName, timeZoneName) ||
                other.timeZoneName == timeZoneName) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.colors, colors) || other.colors == colors) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      acronym,
      title,
      description,
      start,
      end,
      daysCount,
      timeslotDuration,
      timeZoneName,
      logo,
      colors,
      const DeepCollectionEquality().hash(_keywords),
      url,
      const DeepCollectionEquality().hash(_tracks),
      const DeepCollectionEquality().hash(_rooms),
      const DeepCollectionEquality().hash(_meta),
      const DeepCollectionEquality().hash(_days));

  /// Create a copy of Conference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConferenceImplCopyWith<_$ConferenceImpl> get copyWith =>
      __$$ConferenceImplCopyWithImpl<_$ConferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConferenceImplToJson(
      this,
    );
  }
}

abstract class _Conference implements Conference {
  const factory _Conference(
      {required final String acronym,
      required final String title,
      final String? description,
      required final String start,
      required final String end,
      @JsonKey(name: 'daysCount') required final int daysCount,
      @JsonKey(name: 'timeslot_duration')
      required final String timeslotDuration,
      @JsonKey(name: 'time_zone_name') final String? timeZoneName,
      final String? logo,
      final Colors? colors,
      final List<String>? keywords,
      final String? url,
      final List<Track>? tracks,
      final List<Room>? rooms,
      final Map<String, dynamic>? meta,
      required final List<Day> days}) = _$ConferenceImpl;

  factory _Conference.fromJson(Map<String, dynamic> json) =
      _$ConferenceImpl.fromJson;

  @override
  String get acronym;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get start;
  @override
  String get end;
  @override
  @JsonKey(name: 'daysCount')
  int get daysCount;
  @override
  @JsonKey(name: 'timeslot_duration')
  String get timeslotDuration;
  @override
  @JsonKey(name: 'time_zone_name')
  String? get timeZoneName;
  @override
  String? get logo;
  @override
  Colors? get colors;
  @override
  List<String>? get keywords;
  @override
  String? get url;
  @override
  List<Track>? get tracks;
  @override
  List<Room>? get rooms;
  @override
  Map<String, dynamic>? get meta;
  @override
  List<Day> get days;

  /// Create a copy of Conference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConferenceImplCopyWith<_$ConferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Colors _$ColorsFromJson(Map<String, dynamic> json) {
  return _Colors.fromJson(json);
}

/// @nodoc
mixin _$Colors {
  String? get primary => throw _privateConstructorUsedError;
  String? get background => throw _privateConstructorUsedError;

  /// Serializes this Colors to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorsCopyWith<Colors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsCopyWith<$Res> {
  factory $ColorsCopyWith(Colors value, $Res Function(Colors) then) =
      _$ColorsCopyWithImpl<$Res, Colors>;
  @useResult
  $Res call({String? primary, String? background});
}

/// @nodoc
class _$ColorsCopyWithImpl<$Res, $Val extends Colors>
    implements $ColorsCopyWith<$Res> {
  _$ColorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? background = freezed,
  }) {
    return _then(_value.copyWith(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorsImplCopyWith<$Res> implements $ColorsCopyWith<$Res> {
  factory _$$ColorsImplCopyWith(
          _$ColorsImpl value, $Res Function(_$ColorsImpl) then) =
      __$$ColorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? primary, String? background});
}

/// @nodoc
class __$$ColorsImplCopyWithImpl<$Res>
    extends _$ColorsCopyWithImpl<$Res, _$ColorsImpl>
    implements _$$ColorsImplCopyWith<$Res> {
  __$$ColorsImplCopyWithImpl(
      _$ColorsImpl _value, $Res Function(_$ColorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? background = freezed,
  }) {
    return _then(_$ColorsImpl(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorsImpl implements _Colors {
  const _$ColorsImpl({this.primary, this.background});

  factory _$ColorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorsImplFromJson(json);

  @override
  final String? primary;
  @override
  final String? background;

  @override
  String toString() {
    return 'Colors(primary: $primary, background: $background)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorsImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.background, background) ||
                other.background == background));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, primary, background);

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorsImplCopyWith<_$ColorsImpl> get copyWith =>
      __$$ColorsImplCopyWithImpl<_$ColorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorsImplToJson(
      this,
    );
  }
}

abstract class _Colors implements Colors {
  const factory _Colors({final String? primary, final String? background}) =
      _$ColorsImpl;

  factory _Colors.fromJson(Map<String, dynamic> json) = _$ColorsImpl.fromJson;

  @override
  String? get primary;
  @override
  String? get background;

  /// Create a copy of Colors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorsImplCopyWith<_$ColorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
mixin _$Track {
  String get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  /// Serializes this Track to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res, Track>;
  @useResult
  $Res call({String name, String? slug, String? color});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res, $Val extends Track>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = freezed,
    Object? color = freezed,
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
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackImplCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$TrackImplCopyWith(
          _$TrackImpl value, $Res Function(_$TrackImpl) then) =
      __$$TrackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? slug, String? color});
}

/// @nodoc
class __$$TrackImplCopyWithImpl<$Res>
    extends _$TrackCopyWithImpl<$Res, _$TrackImpl>
    implements _$$TrackImplCopyWith<$Res> {
  __$$TrackImplCopyWithImpl(
      _$TrackImpl _value, $Res Function(_$TrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = freezed,
    Object? color = freezed,
  }) {
    return _then(_$TrackImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackImpl implements _Track {
  const _$TrackImpl({required this.name, this.slug, this.color});

  factory _$TrackImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackImplFromJson(json);

  @override
  final String name;
  @override
  final String? slug;
  @override
  final String? color;

  @override
  String toString() {
    return 'Track(name: $name, slug: $slug, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, color);

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      __$$TrackImplCopyWithImpl<_$TrackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackImplToJson(
      this,
    );
  }
}

abstract class _Track implements Track {
  const factory _Track(
      {required final String name,
      final String? slug,
      final String? color}) = _$TrackImpl;

  factory _Track.fromJson(Map<String, dynamic> json) = _$TrackImpl.fromJson;

  @override
  String get name;
  @override
  String? get slug;
  @override
  String? get color;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
