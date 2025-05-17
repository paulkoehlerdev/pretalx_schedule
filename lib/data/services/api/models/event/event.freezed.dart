// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  LocalizedName get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_from')
  String get dateFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_to')
  String get dateTo => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  EventUrls get urls => throw _privateConstructorUsedError;

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {LocalizedName name,
      String slug,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'date_from') String dateFrom,
      @JsonKey(name: 'date_to') String dateTo,
      String timezone,
      EventUrls urls});

  $LocalizedNameCopyWith<$Res> get name;
  $EventUrlsCopyWith<$Res> get urls;
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? isPublic = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? timezone = null,
    Object? urls = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedName,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as EventUrls,
    ) as $Val);
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedNameCopyWith<$Res> get name {
    return $LocalizedNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventUrlsCopyWith<$Res> get urls {
    return $EventUrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocalizedName name,
      String slug,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'date_from') String dateFrom,
      @JsonKey(name: 'date_to') String dateTo,
      String timezone,
      EventUrls urls});

  @override
  $LocalizedNameCopyWith<$Res> get name;
  @override
  $EventUrlsCopyWith<$Res> get urls;
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? isPublic = null,
    Object? dateFrom = null,
    Object? dateTo = null,
    Object? timezone = null,
    Object? urls = null,
  }) {
    return _then(_$EventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedName,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      dateFrom: null == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: null == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as EventUrls,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {required this.name,
      required this.slug,
      @JsonKey(name: 'is_public') required this.isPublic,
      @JsonKey(name: 'date_from') required this.dateFrom,
      @JsonKey(name: 'date_to') required this.dateTo,
      required this.timezone,
      required this.urls});

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final LocalizedName name;
  @override
  final String slug;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @override
  @JsonKey(name: 'date_from')
  final String dateFrom;
  @override
  @JsonKey(name: 'date_to')
  final String dateTo;
  @override
  final String timezone;
  @override
  final EventUrls urls;

  @override
  String toString() {
    return 'Event(name: $name, slug: $slug, isPublic: $isPublic, dateFrom: $dateFrom, dateTo: $dateTo, timezone: $timezone, urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.urls, urls) || other.urls == urls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, slug, isPublic, dateFrom, dateTo, timezone, urls);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {required final LocalizedName name,
      required final String slug,
      @JsonKey(name: 'is_public') required final bool isPublic,
      @JsonKey(name: 'date_from') required final String dateFrom,
      @JsonKey(name: 'date_to') required final String dateTo,
      required final String timezone,
      required final EventUrls urls}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  LocalizedName get name;
  @override
  String get slug;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;
  @override
  @JsonKey(name: 'date_from')
  String get dateFrom;
  @override
  @JsonKey(name: 'date_to')
  String get dateTo;
  @override
  String get timezone;
  @override
  EventUrls get urls;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalizedName _$LocalizedNameFromJson(Map<String, dynamic> json) {
  return _LocalizedName.fromJson(json);
}

/// @nodoc
mixin _$LocalizedName {
  String get de => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;

  /// Serializes this LocalizedName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizedName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizedNameCopyWith<LocalizedName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedNameCopyWith<$Res> {
  factory $LocalizedNameCopyWith(
          LocalizedName value, $Res Function(LocalizedName) then) =
      _$LocalizedNameCopyWithImpl<$Res, LocalizedName>;
  @useResult
  $Res call({String de, String en});
}

/// @nodoc
class _$LocalizedNameCopyWithImpl<$Res, $Val extends LocalizedName>
    implements $LocalizedNameCopyWith<$Res> {
  _$LocalizedNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizedName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? de = null,
    Object? en = null,
  }) {
    return _then(_value.copyWith(
      de: null == de
          ? _value.de
          : de // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalizedNameImplCopyWith<$Res>
    implements $LocalizedNameCopyWith<$Res> {
  factory _$$LocalizedNameImplCopyWith(
          _$LocalizedNameImpl value, $Res Function(_$LocalizedNameImpl) then) =
      __$$LocalizedNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String de, String en});
}

/// @nodoc
class __$$LocalizedNameImplCopyWithImpl<$Res>
    extends _$LocalizedNameCopyWithImpl<$Res, _$LocalizedNameImpl>
    implements _$$LocalizedNameImplCopyWith<$Res> {
  __$$LocalizedNameImplCopyWithImpl(
      _$LocalizedNameImpl _value, $Res Function(_$LocalizedNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalizedName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? de = null,
    Object? en = null,
  }) {
    return _then(_$LocalizedNameImpl(
      de: null == de
          ? _value.de
          : de // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizedNameImpl implements _LocalizedName {
  const _$LocalizedNameImpl({required this.de, required this.en});

  factory _$LocalizedNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedNameImplFromJson(json);

  @override
  final String de;
  @override
  final String en;

  @override
  String toString() {
    return 'LocalizedName(de: $de, en: $en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedNameImpl &&
            (identical(other.de, de) || other.de == de) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, de, en);

  /// Create a copy of LocalizedName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedNameImplCopyWith<_$LocalizedNameImpl> get copyWith =>
      __$$LocalizedNameImplCopyWithImpl<_$LocalizedNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedNameImplToJson(
      this,
    );
  }
}

abstract class _LocalizedName implements LocalizedName {
  const factory _LocalizedName(
      {required final String de,
      required final String en}) = _$LocalizedNameImpl;

  factory _LocalizedName.fromJson(Map<String, dynamic> json) =
      _$LocalizedNameImpl.fromJson;

  @override
  String get de;
  @override
  String get en;

  /// Create a copy of LocalizedName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizedNameImplCopyWith<_$LocalizedNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventUrls _$EventUrlsFromJson(Map<String, dynamic> json) {
  return _EventUrls.fromJson(json);
}

/// @nodoc
mixin _$EventUrls {
  String get base => throw _privateConstructorUsedError;
  String get schedule => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get feed => throw _privateConstructorUsedError;

  /// Serializes this EventUrls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventUrlsCopyWith<EventUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventUrlsCopyWith<$Res> {
  factory $EventUrlsCopyWith(EventUrls value, $Res Function(EventUrls) then) =
      _$EventUrlsCopyWithImpl<$Res, EventUrls>;
  @useResult
  $Res call({String base, String schedule, String login, String feed});
}

/// @nodoc
class _$EventUrlsCopyWithImpl<$Res, $Val extends EventUrls>
    implements $EventUrlsCopyWith<$Res> {
  _$EventUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? schedule = null,
    Object? login = null,
    Object? feed = null,
  }) {
    return _then(_value.copyWith(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventUrlsImplCopyWith<$Res>
    implements $EventUrlsCopyWith<$Res> {
  factory _$$EventUrlsImplCopyWith(
          _$EventUrlsImpl value, $Res Function(_$EventUrlsImpl) then) =
      __$$EventUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String base, String schedule, String login, String feed});
}

/// @nodoc
class __$$EventUrlsImplCopyWithImpl<$Res>
    extends _$EventUrlsCopyWithImpl<$Res, _$EventUrlsImpl>
    implements _$$EventUrlsImplCopyWith<$Res> {
  __$$EventUrlsImplCopyWithImpl(
      _$EventUrlsImpl _value, $Res Function(_$EventUrlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? schedule = null,
    Object? login = null,
    Object? feed = null,
  }) {
    return _then(_$EventUrlsImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventUrlsImpl implements _EventUrls {
  const _$EventUrlsImpl(
      {required this.base,
      required this.schedule,
      required this.login,
      required this.feed});

  factory _$EventUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventUrlsImplFromJson(json);

  @override
  final String base;
  @override
  final String schedule;
  @override
  final String login;
  @override
  final String feed;

  @override
  String toString() {
    return 'EventUrls(base: $base, schedule: $schedule, login: $login, feed: $feed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventUrlsImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.feed, feed) || other.feed == feed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base, schedule, login, feed);

  /// Create a copy of EventUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventUrlsImplCopyWith<_$EventUrlsImpl> get copyWith =>
      __$$EventUrlsImplCopyWithImpl<_$EventUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventUrlsImplToJson(
      this,
    );
  }
}

abstract class _EventUrls implements EventUrls {
  const factory _EventUrls(
      {required final String base,
      required final String schedule,
      required final String login,
      required final String feed}) = _$EventUrlsImpl;

  factory _EventUrls.fromJson(Map<String, dynamic> json) =
      _$EventUrlsImpl.fromJson;

  @override
  String get base;
  @override
  String get schedule;
  @override
  String get login;
  @override
  String get feed;

  /// Create a copy of EventUrls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventUrlsImplCopyWith<_$EventUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
