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

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  int get index => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_start')
  String get dayStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_end')
  String get dayEnd => throw _privateConstructorUsedError;
  Map<String, List<Talk>> get rooms => throw _privateConstructorUsedError;

  /// Serializes this Day to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call(
      {int index,
      String date,
      @JsonKey(name: 'day_start') String dayStart,
      @JsonKey(name: 'day_end') String dayEnd,
      Map<String, List<Talk>> rooms});
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? date = null,
    Object? dayStart = null,
    Object? dayEnd = null,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dayStart: null == dayStart
          ? _value.dayStart
          : dayStart // ignore: cast_nullable_to_non_nullable
              as String,
      dayEnd: null == dayEnd
          ? _value.dayEnd
          : dayEnd // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Talk>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayImplCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$DayImplCopyWith(_$DayImpl value, $Res Function(_$DayImpl) then) =
      __$$DayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String date,
      @JsonKey(name: 'day_start') String dayStart,
      @JsonKey(name: 'day_end') String dayEnd,
      Map<String, List<Talk>> rooms});
}

/// @nodoc
class __$$DayImplCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$DayImpl>
    implements _$$DayImplCopyWith<$Res> {
  __$$DayImplCopyWithImpl(_$DayImpl _value, $Res Function(_$DayImpl) _then)
      : super(_value, _then);

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? date = null,
    Object? dayStart = null,
    Object? dayEnd = null,
    Object? rooms = null,
  }) {
    return _then(_$DayImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dayStart: null == dayStart
          ? _value.dayStart
          : dayStart // ignore: cast_nullable_to_non_nullable
              as String,
      dayEnd: null == dayEnd
          ? _value.dayEnd
          : dayEnd // ignore: cast_nullable_to_non_nullable
              as String,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Talk>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayImpl implements _Day {
  const _$DayImpl(
      {required this.index,
      required this.date,
      @JsonKey(name: 'day_start') required this.dayStart,
      @JsonKey(name: 'day_end') required this.dayEnd,
      required final Map<String, List<Talk>> rooms})
      : _rooms = rooms;

  factory _$DayImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayImplFromJson(json);

  @override
  final int index;
  @override
  final String date;
  @override
  @JsonKey(name: 'day_start')
  final String dayStart;
  @override
  @JsonKey(name: 'day_end')
  final String dayEnd;
  final Map<String, List<Talk>> _rooms;
  @override
  Map<String, List<Talk>> get rooms {
    if (_rooms is EqualUnmodifiableMapView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rooms);
  }

  @override
  String toString() {
    return 'Day(index: $index, date: $date, dayStart: $dayStart, dayEnd: $dayEnd, rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayStart, dayStart) ||
                other.dayStart == dayStart) &&
            (identical(other.dayEnd, dayEnd) || other.dayEnd == dayEnd) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, date, dayStart, dayEnd,
      const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      __$$DayImplCopyWithImpl<_$DayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayImplToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  const factory _Day(
      {required final int index,
      required final String date,
      @JsonKey(name: 'day_start') required final String dayStart,
      @JsonKey(name: 'day_end') required final String dayEnd,
      required final Map<String, List<Talk>> rooms}) = _$DayImpl;

  factory _Day.fromJson(Map<String, dynamic> json) = _$DayImpl.fromJson;

  @override
  int get index;
  @override
  String get date;
  @override
  @JsonKey(name: 'day_start')
  String get dayStart;
  @override
  @JsonKey(name: 'day_end')
  String get dayEnd;
  @override
  Map<String, List<Talk>> get rooms;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Talk _$TalkFromJson(Map<String, dynamic> json) {
  return _Talk.fromJson(json);
}

/// @nodoc
mixin _$Talk {
  String get guid => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get start => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get track => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get abstract => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get recordingLicense => throw _privateConstructorUsedError;
  @JsonKey(name: 'do_not_record')
  bool? get doNotRecord => throw _privateConstructorUsedError;
  @JsonKey(name: 'do_not_stream')
  dynamic get doNotStream => throw _privateConstructorUsedError;
  List<Person> get persons => throw _privateConstructorUsedError;
  List<Reference> get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'feedback_url')
  String? get feedbackUrl => throw _privateConstructorUsedError;
  List<Reference>? get attachments => throw _privateConstructorUsedError;

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
  $Res call(
      {String guid,
      String? code,
      int id,
      String? logo,
      String date,
      String start,
      String duration,
      String room,
      String slug,
      String url,
      String title,
      String? subtitle,
      String? track,
      String type,
      String? language,
      String? abstract,
      String? description,
      String? recordingLicense,
      @JsonKey(name: 'do_not_record') bool? doNotRecord,
      @JsonKey(name: 'do_not_stream') dynamic doNotStream,
      List<Person> persons,
      List<Reference> links,
      @JsonKey(name: 'feedback_url') String? feedbackUrl,
      List<Reference>? attachments});
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
    Object? guid = null,
    Object? code = freezed,
    Object? id = null,
    Object? logo = freezed,
    Object? date = null,
    Object? start = null,
    Object? duration = null,
    Object? room = null,
    Object? slug = null,
    Object? url = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? track = freezed,
    Object? type = null,
    Object? language = freezed,
    Object? abstract = freezed,
    Object? description = freezed,
    Object? recordingLicense = freezed,
    Object? doNotRecord = freezed,
    Object? doNotStream = freezed,
    Object? persons = null,
    Object? links = null,
    Object? feedbackUrl = freezed,
    Object? attachments = freezed,
  }) {
    return _then(_value.copyWith(
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingLicense: freezed == recordingLicense
          ? _value.recordingLicense
          : recordingLicense // ignore: cast_nullable_to_non_nullable
              as String?,
      doNotRecord: freezed == doNotRecord
          ? _value.doNotRecord
          : doNotRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
      doNotStream: freezed == doNotStream
          ? _value.doNotStream
          : doNotStream // ignore: cast_nullable_to_non_nullable
              as dynamic,
      persons: null == persons
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
      feedbackUrl: freezed == feedbackUrl
          ? _value.feedbackUrl
          : feedbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
  $Res call(
      {String guid,
      String? code,
      int id,
      String? logo,
      String date,
      String start,
      String duration,
      String room,
      String slug,
      String url,
      String title,
      String? subtitle,
      String? track,
      String type,
      String? language,
      String? abstract,
      String? description,
      String? recordingLicense,
      @JsonKey(name: 'do_not_record') bool? doNotRecord,
      @JsonKey(name: 'do_not_stream') dynamic doNotStream,
      List<Person> persons,
      List<Reference> links,
      @JsonKey(name: 'feedback_url') String? feedbackUrl,
      List<Reference>? attachments});
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
    Object? guid = null,
    Object? code = freezed,
    Object? id = null,
    Object? logo = freezed,
    Object? date = null,
    Object? start = null,
    Object? duration = null,
    Object? room = null,
    Object? slug = null,
    Object? url = null,
    Object? title = null,
    Object? subtitle = freezed,
    Object? track = freezed,
    Object? type = null,
    Object? language = freezed,
    Object? abstract = freezed,
    Object? description = freezed,
    Object? recordingLicense = freezed,
    Object? doNotRecord = freezed,
    Object? doNotStream = freezed,
    Object? persons = null,
    Object? links = null,
    Object? feedbackUrl = freezed,
    Object? attachments = freezed,
  }) {
    return _then(_$TalkImpl(
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      recordingLicense: freezed == recordingLicense
          ? _value.recordingLicense
          : recordingLicense // ignore: cast_nullable_to_non_nullable
              as String?,
      doNotRecord: freezed == doNotRecord
          ? _value.doNotRecord
          : doNotRecord // ignore: cast_nullable_to_non_nullable
              as bool?,
      doNotStream: freezed == doNotStream
          ? _value.doNotStream
          : doNotStream // ignore: cast_nullable_to_non_nullable
              as dynamic,
      persons: null == persons
          ? _value._persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Reference>,
      feedbackUrl: freezed == feedbackUrl
          ? _value.feedbackUrl
          : feedbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TalkImpl implements _Talk {
  const _$TalkImpl(
      {required this.guid,
      this.code,
      required this.id,
      this.logo,
      required this.date,
      required this.start,
      required this.duration,
      required this.room,
      required this.slug,
      required this.url,
      required this.title,
      required this.subtitle,
      required this.track,
      required this.type,
      required this.language,
      required this.abstract,
      this.description,
      this.recordingLicense,
      @JsonKey(name: 'do_not_record') this.doNotRecord,
      @JsonKey(name: 'do_not_stream') this.doNotStream,
      required final List<Person> persons,
      required final List<Reference> links,
      @JsonKey(name: 'feedback_url') this.feedbackUrl,
      final List<Reference>? attachments})
      : _persons = persons,
        _links = links,
        _attachments = attachments;

  factory _$TalkImpl.fromJson(Map<String, dynamic> json) =>
      _$$TalkImplFromJson(json);

  @override
  final String guid;
  @override
  final String? code;
  @override
  final int id;
  @override
  final String? logo;
  @override
  final String date;
  @override
  final String start;
  @override
  final String duration;
  @override
  final String room;
  @override
  final String slug;
  @override
  final String url;
  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final String? track;
  @override
  final String type;
  @override
  final String? language;
  @override
  final String? abstract;
  @override
  final String? description;
  @override
  final String? recordingLicense;
  @override
  @JsonKey(name: 'do_not_record')
  final bool? doNotRecord;
  @override
  @JsonKey(name: 'do_not_stream')
  final dynamic doNotStream;
  final List<Person> _persons;
  @override
  List<Person> get persons {
    if (_persons is EqualUnmodifiableListView) return _persons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_persons);
  }

  final List<Reference> _links;
  @override
  List<Reference> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey(name: 'feedback_url')
  final String? feedbackUrl;
  final List<Reference>? _attachments;
  @override
  List<Reference>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Talk(guid: $guid, code: $code, id: $id, logo: $logo, date: $date, start: $start, duration: $duration, room: $room, slug: $slug, url: $url, title: $title, subtitle: $subtitle, track: $track, type: $type, language: $language, abstract: $abstract, description: $description, recordingLicense: $recordingLicense, doNotRecord: $doNotRecord, doNotStream: $doNotStream, persons: $persons, links: $links, feedbackUrl: $feedbackUrl, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TalkImpl &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.recordingLicense, recordingLicense) ||
                other.recordingLicense == recordingLicense) &&
            (identical(other.doNotRecord, doNotRecord) ||
                other.doNotRecord == doNotRecord) &&
            const DeepCollectionEquality()
                .equals(other.doNotStream, doNotStream) &&
            const DeepCollectionEquality().equals(other._persons, _persons) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.feedbackUrl, feedbackUrl) ||
                other.feedbackUrl == feedbackUrl) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        guid,
        code,
        id,
        logo,
        date,
        start,
        duration,
        room,
        slug,
        url,
        title,
        subtitle,
        track,
        type,
        language,
        abstract,
        description,
        recordingLicense,
        doNotRecord,
        const DeepCollectionEquality().hash(doNotStream),
        const DeepCollectionEquality().hash(_persons),
        const DeepCollectionEquality().hash(_links),
        feedbackUrl,
        const DeepCollectionEquality().hash(_attachments)
      ]);

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
      {required final String guid,
      final String? code,
      required final int id,
      final String? logo,
      required final String date,
      required final String start,
      required final String duration,
      required final String room,
      required final String slug,
      required final String url,
      required final String title,
      required final String? subtitle,
      required final String? track,
      required final String type,
      required final String? language,
      required final String? abstract,
      final String? description,
      final String? recordingLicense,
      @JsonKey(name: 'do_not_record') final bool? doNotRecord,
      @JsonKey(name: 'do_not_stream') final dynamic doNotStream,
      required final List<Person> persons,
      required final List<Reference> links,
      @JsonKey(name: 'feedback_url') final String? feedbackUrl,
      final List<Reference>? attachments}) = _$TalkImpl;

  factory _Talk.fromJson(Map<String, dynamic> json) = _$TalkImpl.fromJson;

  @override
  String get guid;
  @override
  String? get code;
  @override
  int get id;
  @override
  String? get logo;
  @override
  String get date;
  @override
  String get start;
  @override
  String get duration;
  @override
  String get room;
  @override
  String get slug;
  @override
  String get url;
  @override
  String get title;
  @override
  String? get subtitle;
  @override
  String? get track;
  @override
  String get type;
  @override
  String? get language;
  @override
  String? get abstract;
  @override
  String? get description;
  @override
  String? get recordingLicense;
  @override
  @JsonKey(name: 'do_not_record')
  bool? get doNotRecord;
  @override
  @JsonKey(name: 'do_not_stream')
  dynamic get doNotStream;
  @override
  List<Person> get persons;
  @override
  List<Reference> get links;
  @override
  @JsonKey(name: 'feedback_url')
  String? get feedbackUrl;
  @override
  List<Reference>? get attachments;

  /// Create a copy of Talk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TalkImplCopyWith<_$TalkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
