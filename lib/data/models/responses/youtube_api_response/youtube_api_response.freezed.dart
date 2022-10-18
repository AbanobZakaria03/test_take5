// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeApiResponse _$YoutubeApiResponseFromJson(Map<String, dynamic> json) {
  return _YoutubeApiResponse.fromJson(json);
}

/// @nodoc
mixin _$YoutubeApiResponse {
  List<Item>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeApiResponseCopyWith<YoutubeApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeApiResponseCopyWith<$Res> {
  factory $YoutubeApiResponseCopyWith(
          YoutubeApiResponse value, $Res Function(YoutubeApiResponse) then) =
      _$YoutubeApiResponseCopyWithImpl<$Res>;
  $Res call({List<Item>? items});
}

/// @nodoc
class _$YoutubeApiResponseCopyWithImpl<$Res>
    implements $YoutubeApiResponseCopyWith<$Res> {
  _$YoutubeApiResponseCopyWithImpl(this._value, this._then);

  final YoutubeApiResponse _value;
  // ignore: unused_field
  final $Res Function(YoutubeApiResponse) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
abstract class _$$_YoutubeApiResponseCopyWith<$Res>
    implements $YoutubeApiResponseCopyWith<$Res> {
  factory _$$_YoutubeApiResponseCopyWith(_$_YoutubeApiResponse value,
          $Res Function(_$_YoutubeApiResponse) then) =
      __$$_YoutubeApiResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Item>? items});
}

/// @nodoc
class __$$_YoutubeApiResponseCopyWithImpl<$Res>
    extends _$YoutubeApiResponseCopyWithImpl<$Res>
    implements _$$_YoutubeApiResponseCopyWith<$Res> {
  __$$_YoutubeApiResponseCopyWithImpl(
      _$_YoutubeApiResponse _value, $Res Function(_$_YoutubeApiResponse) _then)
      : super(_value, (v) => _then(v as _$_YoutubeApiResponse));

  @override
  _$_YoutubeApiResponse get _value => super._value as _$_YoutubeApiResponse;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_YoutubeApiResponse(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeApiResponse implements _YoutubeApiResponse {
  const _$_YoutubeApiResponse({final List<Item>? items}) : _items = items;

  factory _$_YoutubeApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeApiResponseFromJson(json);

  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'YoutubeApiResponse(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeApiResponse &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_YoutubeApiResponseCopyWith<_$_YoutubeApiResponse> get copyWith =>
      __$$_YoutubeApiResponseCopyWithImpl<_$_YoutubeApiResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeApiResponseToJson(
      this,
    );
  }
}

abstract class _YoutubeApiResponse implements YoutubeApiResponse {
  const factory _YoutubeApiResponse({final List<Item>? items}) =
      _$_YoutubeApiResponse;

  factory _YoutubeApiResponse.fromJson(Map<String, dynamic> json) =
      _$_YoutubeApiResponse.fromJson;

  @override
  List<Item>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeApiResponseCopyWith<_$_YoutubeApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get id => throw _privateConstructorUsedError;
  Snippet? get snippet => throw _privateConstructorUsedError;
  Statistics? get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call({String? id, Snippet? snippet, Statistics? statistics});

  $SnippetCopyWith<$Res>? get snippet;
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? snippet = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet?,
      statistics: statistics == freezed
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ));
  }

  @override
  $SnippetCopyWith<$Res>? get snippet {
    if (_value.snippet == null) {
      return null;
    }

    return $SnippetCopyWith<$Res>(_value.snippet!, (value) {
      return _then(_value.copyWith(snippet: value));
    });
  }

  @override
  $StatisticsCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $StatisticsCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  $Res call({String? id, Snippet? snippet, Statistics? statistics});

  @override
  $SnippetCopyWith<$Res>? get snippet;
  @override
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, (v) => _then(v as _$_Item));

  @override
  _$_Item get _value => super._value as _$_Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? snippet = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_$_Item(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet?,
      statistics: statistics == freezed
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item({this.id, this.snippet, this.statistics});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String? id;
  @override
  final Snippet? snippet;
  @override
  final Statistics? statistics;

  @override
  String toString() {
    return 'Item(id: $id, snippet: $snippet, statistics: $statistics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.snippet, snippet) &&
            const DeepCollectionEquality()
                .equals(other.statistics, statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(snippet),
      const DeepCollectionEquality().hash(statistics));

  @JsonKey(ignore: true)
  @override
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {final String? id,
      final Snippet? snippet,
      final Statistics? statistics}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String? get id;
  @override
  Snippet? get snippet;
  @override
  Statistics? get statistics;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}

Snippet _$SnippetFromJson(Map<String, dynamic> json) {
  return _Snippet.fromJson(json);
}

/// @nodoc
mixin _$Snippet {
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  String? get channelId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Thumbnails? get thumbnails => throw _privateConstructorUsedError;
  String? get channelTitle => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get liveBroadcastContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetCopyWith<Snippet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetCopyWith<$Res> {
  factory $SnippetCopyWith(Snippet value, $Res Function(Snippet) then) =
      _$SnippetCopyWithImpl<$Res>;
  $Res call(
      {DateTime? publishedAt,
      String? channelId,
      String? title,
      String? description,
      Thumbnails? thumbnails,
      String? channelTitle,
      String? categoryId,
      String? liveBroadcastContent});

  $ThumbnailsCopyWith<$Res>? get thumbnails;
}

/// @nodoc
class _$SnippetCopyWithImpl<$Res> implements $SnippetCopyWith<$Res> {
  _$SnippetCopyWithImpl(this._value, this._then);

  final Snippet _value;
  // ignore: unused_field
  final $Res Function(Snippet) _then;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? channelTitle = freezed,
    Object? categoryId = freezed,
    Object? liveBroadcastContent = freezed,
  }) {
    return _then(_value.copyWith(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails?,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      liveBroadcastContent: liveBroadcastContent == freezed
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ThumbnailsCopyWith<$Res>? get thumbnails {
    if (_value.thumbnails == null) {
      return null;
    }

    return $ThumbnailsCopyWith<$Res>(_value.thumbnails!, (value) {
      return _then(_value.copyWith(thumbnails: value));
    });
  }
}

/// @nodoc
abstract class _$$_SnippetCopyWith<$Res> implements $SnippetCopyWith<$Res> {
  factory _$$_SnippetCopyWith(
          _$_Snippet value, $Res Function(_$_Snippet) then) =
      __$$_SnippetCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? publishedAt,
      String? channelId,
      String? title,
      String? description,
      Thumbnails? thumbnails,
      String? channelTitle,
      String? categoryId,
      String? liveBroadcastContent});

  @override
  $ThumbnailsCopyWith<$Res>? get thumbnails;
}

/// @nodoc
class __$$_SnippetCopyWithImpl<$Res> extends _$SnippetCopyWithImpl<$Res>
    implements _$$_SnippetCopyWith<$Res> {
  __$$_SnippetCopyWithImpl(_$_Snippet _value, $Res Function(_$_Snippet) _then)
      : super(_value, (v) => _then(v as _$_Snippet));

  @override
  _$_Snippet get _value => super._value as _$_Snippet;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? channelTitle = freezed,
    Object? categoryId = freezed,
    Object? liveBroadcastContent = freezed,
  }) {
    return _then(_$_Snippet(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails?,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      liveBroadcastContent: liveBroadcastContent == freezed
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Snippet implements _Snippet {
  const _$_Snippet(
      {this.publishedAt,
      this.channelId,
      this.title,
      this.description,
      this.thumbnails,
      this.channelTitle,
      this.categoryId,
      this.liveBroadcastContent});

  factory _$_Snippet.fromJson(Map<String, dynamic> json) =>
      _$$_SnippetFromJson(json);

  @override
  final DateTime? publishedAt;
  @override
  final String? channelId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final Thumbnails? thumbnails;
  @override
  final String? channelTitle;
  @override
  final String? categoryId;
  @override
  final String? liveBroadcastContent;

  @override
  String toString() {
    return 'Snippet(publishedAt: $publishedAt, channelId: $channelId, title: $title, description: $description, thumbnails: $thumbnails, channelTitle: $channelTitle, categoryId: $categoryId, liveBroadcastContent: $liveBroadcastContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Snippet &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality().equals(other.channelId, channelId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality()
                .equals(other.channelTitle, channelTitle) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality()
                .equals(other.liveBroadcastContent, liveBroadcastContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(channelId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(thumbnails),
      const DeepCollectionEquality().hash(channelTitle),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(liveBroadcastContent));

  @JsonKey(ignore: true)
  @override
  _$$_SnippetCopyWith<_$_Snippet> get copyWith =>
      __$$_SnippetCopyWithImpl<_$_Snippet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnippetToJson(
      this,
    );
  }
}

abstract class _Snippet implements Snippet {
  const factory _Snippet(
      {final DateTime? publishedAt,
      final String? channelId,
      final String? title,
      final String? description,
      final Thumbnails? thumbnails,
      final String? channelTitle,
      final String? categoryId,
      final String? liveBroadcastContent}) = _$_Snippet;

  factory _Snippet.fromJson(Map<String, dynamic> json) = _$_Snippet.fromJson;

  @override
  DateTime? get publishedAt;
  @override
  String? get channelId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  Thumbnails? get thumbnails;
  @override
  String? get channelTitle;
  @override
  String? get categoryId;
  @override
  String? get liveBroadcastContent;
  @override
  @JsonKey(ignore: true)
  _$$_SnippetCopyWith<_$_Snippet> get copyWith =>
      throw _privateConstructorUsedError;
}

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) {
  return _Thumbnails.fromJson(json);
}

/// @nodoc
mixin _$Thumbnails {
  Default? get thumbnailsDefault => throw _privateConstructorUsedError;
  Default? get medium => throw _privateConstructorUsedError;
  Default? get high => throw _privateConstructorUsedError;
  Default? get standard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailsCopyWith<Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsCopyWith<$Res> {
  factory $ThumbnailsCopyWith(
          Thumbnails value, $Res Function(Thumbnails) then) =
      _$ThumbnailsCopyWithImpl<$Res>;
  $Res call(
      {Default? thumbnailsDefault,
      Default? medium,
      Default? high,
      Default? standard});

  $DefaultCopyWith<$Res>? get thumbnailsDefault;
  $DefaultCopyWith<$Res>? get medium;
  $DefaultCopyWith<$Res>? get high;
  $DefaultCopyWith<$Res>? get standard;
}

/// @nodoc
class _$ThumbnailsCopyWithImpl<$Res> implements $ThumbnailsCopyWith<$Res> {
  _$ThumbnailsCopyWithImpl(this._value, this._then);

  final Thumbnails _value;
  // ignore: unused_field
  final $Res Function(Thumbnails) _then;

  @override
  $Res call({
    Object? thumbnailsDefault = freezed,
    Object? medium = freezed,
    Object? high = freezed,
    Object? standard = freezed,
  }) {
    return _then(_value.copyWith(
      thumbnailsDefault: thumbnailsDefault == freezed
          ? _value.thumbnailsDefault
          : thumbnailsDefault // ignore: cast_nullable_to_non_nullable
              as Default?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default?,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default?,
      standard: standard == freezed
          ? _value.standard
          : standard // ignore: cast_nullable_to_non_nullable
              as Default?,
    ));
  }

  @override
  $DefaultCopyWith<$Res>? get thumbnailsDefault {
    if (_value.thumbnailsDefault == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.thumbnailsDefault!, (value) {
      return _then(_value.copyWith(thumbnailsDefault: value));
    });
  }

  @override
  $DefaultCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.medium!, (value) {
      return _then(_value.copyWith(medium: value));
    });
  }

  @override
  $DefaultCopyWith<$Res>? get high {
    if (_value.high == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.high!, (value) {
      return _then(_value.copyWith(high: value));
    });
  }

  @override
  $DefaultCopyWith<$Res>? get standard {
    if (_value.standard == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.standard!, (value) {
      return _then(_value.copyWith(standard: value));
    });
  }
}

/// @nodoc
abstract class _$$_ThumbnailsCopyWith<$Res>
    implements $ThumbnailsCopyWith<$Res> {
  factory _$$_ThumbnailsCopyWith(
          _$_Thumbnails value, $Res Function(_$_Thumbnails) then) =
      __$$_ThumbnailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Default? thumbnailsDefault,
      Default? medium,
      Default? high,
      Default? standard});

  @override
  $DefaultCopyWith<$Res>? get thumbnailsDefault;
  @override
  $DefaultCopyWith<$Res>? get medium;
  @override
  $DefaultCopyWith<$Res>? get high;
  @override
  $DefaultCopyWith<$Res>? get standard;
}

/// @nodoc
class __$$_ThumbnailsCopyWithImpl<$Res> extends _$ThumbnailsCopyWithImpl<$Res>
    implements _$$_ThumbnailsCopyWith<$Res> {
  __$$_ThumbnailsCopyWithImpl(
      _$_Thumbnails _value, $Res Function(_$_Thumbnails) _then)
      : super(_value, (v) => _then(v as _$_Thumbnails));

  @override
  _$_Thumbnails get _value => super._value as _$_Thumbnails;

  @override
  $Res call({
    Object? thumbnailsDefault = freezed,
    Object? medium = freezed,
    Object? high = freezed,
    Object? standard = freezed,
  }) {
    return _then(_$_Thumbnails(
      thumbnailsDefault: thumbnailsDefault == freezed
          ? _value.thumbnailsDefault
          : thumbnailsDefault // ignore: cast_nullable_to_non_nullable
              as Default?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default?,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default?,
      standard: standard == freezed
          ? _value.standard
          : standard // ignore: cast_nullable_to_non_nullable
              as Default?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Thumbnails implements _Thumbnails {
  const _$_Thumbnails(
      {this.thumbnailsDefault, this.medium, this.high, this.standard});

  factory _$_Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$$_ThumbnailsFromJson(json);

  @override
  final Default? thumbnailsDefault;
  @override
  final Default? medium;
  @override
  final Default? high;
  @override
  final Default? standard;

  @override
  String toString() {
    return 'Thumbnails(thumbnailsDefault: $thumbnailsDefault, medium: $medium, high: $high, standard: $standard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Thumbnails &&
            const DeepCollectionEquality()
                .equals(other.thumbnailsDefault, thumbnailsDefault) &&
            const DeepCollectionEquality().equals(other.medium, medium) &&
            const DeepCollectionEquality().equals(other.high, high) &&
            const DeepCollectionEquality().equals(other.standard, standard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(thumbnailsDefault),
      const DeepCollectionEquality().hash(medium),
      const DeepCollectionEquality().hash(high),
      const DeepCollectionEquality().hash(standard));

  @JsonKey(ignore: true)
  @override
  _$$_ThumbnailsCopyWith<_$_Thumbnails> get copyWith =>
      __$$_ThumbnailsCopyWithImpl<_$_Thumbnails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThumbnailsToJson(
      this,
    );
  }
}

abstract class _Thumbnails implements Thumbnails {
  const factory _Thumbnails(
      {final Default? thumbnailsDefault,
      final Default? medium,
      final Default? high,
      final Default? standard}) = _$_Thumbnails;

  factory _Thumbnails.fromJson(Map<String, dynamic> json) =
      _$_Thumbnails.fromJson;

  @override
  Default? get thumbnailsDefault;
  @override
  Default? get medium;
  @override
  Default? get high;
  @override
  Default? get standard;
  @override
  @JsonKey(ignore: true)
  _$$_ThumbnailsCopyWith<_$_Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

Default _$DefaultFromJson(Map<String, dynamic> json) {
  return _Default.fromJson(json);
}

/// @nodoc
mixin _$Default {
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultCopyWith<Default> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultCopyWith<$Res> {
  factory $DefaultCopyWith(Default value, $Res Function(Default) then) =
      _$DefaultCopyWithImpl<$Res>;
  $Res call({String? url, int? width, int? height});
}

/// @nodoc
class _$DefaultCopyWithImpl<$Res> implements $DefaultCopyWith<$Res> {
  _$DefaultCopyWithImpl(this._value, this._then);

  final Default _value;
  // ignore: unused_field
  final $Res Function(Default) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_DefaultCopyWith<$Res> implements $DefaultCopyWith<$Res> {
  factory _$$_DefaultCopyWith(
          _$_Default value, $Res Function(_$_Default) then) =
      __$$_DefaultCopyWithImpl<$Res>;
  @override
  $Res call({String? url, int? width, int? height});
}

/// @nodoc
class __$$_DefaultCopyWithImpl<$Res> extends _$DefaultCopyWithImpl<$Res>
    implements _$$_DefaultCopyWith<$Res> {
  __$$_DefaultCopyWithImpl(_$_Default _value, $Res Function(_$_Default) _then)
      : super(_value, (v) => _then(v as _$_Default));

  @override
  _$_Default get _value => super._value as _$_Default;

  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$_Default(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Default implements _Default {
  const _$_Default({this.url, this.width, this.height});

  factory _$_Default.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultFromJson(json);

  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'Default(url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Default &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$$_DefaultCopyWith<_$_Default> get copyWith =>
      __$$_DefaultCopyWithImpl<_$_Default>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultToJson(
      this,
    );
  }
}

abstract class _Default implements Default {
  const factory _Default(
      {final String? url, final int? width, final int? height}) = _$_Default;

  factory _Default.fromJson(Map<String, dynamic> json) = _$_Default.fromJson;

  @override
  String? get url;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultCopyWith<_$_Default> get copyWith =>
      throw _privateConstructorUsedError;
}

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  String? get viewCount => throw _privateConstructorUsedError;
  String? get likeCount => throw _privateConstructorUsedError;
  String? get favoriteCount => throw _privateConstructorUsedError;
  String? get commentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res>;
  $Res call(
      {String? viewCount,
      String? likeCount,
      String? favoriteCount,
      String? commentCount});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res> implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  final Statistics _value;
  // ignore: unused_field
  final $Res Function(Statistics) _then;

  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
    Object? favoriteCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_value.copyWith(
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StatisticsCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$_StatisticsCopyWith(
          _$_Statistics value, $Res Function(_$_Statistics) then) =
      __$$_StatisticsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? viewCount,
      String? likeCount,
      String? favoriteCount,
      String? commentCount});
}

/// @nodoc
class __$$_StatisticsCopyWithImpl<$Res> extends _$StatisticsCopyWithImpl<$Res>
    implements _$$_StatisticsCopyWith<$Res> {
  __$$_StatisticsCopyWithImpl(
      _$_Statistics _value, $Res Function(_$_Statistics) _then)
      : super(_value, (v) => _then(v as _$_Statistics));

  @override
  _$_Statistics get _value => super._value as _$_Statistics;

  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
    Object? favoriteCount = freezed,
    Object? commentCount = freezed,
  }) {
    return _then(_$_Statistics(
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Statistics implements _Statistics {
  const _$_Statistics(
      {this.viewCount, this.likeCount, this.favoriteCount, this.commentCount});

  factory _$_Statistics.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsFromJson(json);

  @override
  final String? viewCount;
  @override
  final String? likeCount;
  @override
  final String? favoriteCount;
  @override
  final String? commentCount;

  @override
  String toString() {
    return 'Statistics(viewCount: $viewCount, likeCount: $likeCount, favoriteCount: $favoriteCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Statistics &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.favoriteCount, favoriteCount) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(viewCount),
      const DeepCollectionEquality().hash(likeCount),
      const DeepCollectionEquality().hash(favoriteCount),
      const DeepCollectionEquality().hash(commentCount));

  @JsonKey(ignore: true)
  @override
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      __$$_StatisticsCopyWithImpl<_$_Statistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics(
      {final String? viewCount,
      final String? likeCount,
      final String? favoriteCount,
      final String? commentCount}) = _$_Statistics;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$_Statistics.fromJson;

  @override
  String? get viewCount;
  @override
  String? get likeCount;
  @override
  String? get favoriteCount;
  @override
  String? get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}
