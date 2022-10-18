// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YoutubeApiResponse _$$_YoutubeApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$_YoutubeApiResponse(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_YoutubeApiResponseToJson(
        _$_YoutubeApiResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as String?,
      snippet: json['snippet'] == null
          ? null
          : Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
      statistics: json['statistics'] == null
          ? null
          : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'snippet': instance.snippet,
      'statistics': instance.statistics,
    };

_$_Snippet _$$_SnippetFromJson(Map<String, dynamic> json) => _$_Snippet(
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      channelId: json['channelId'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnails: json['thumbnails'] == null
          ? null
          : Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String?,
      categoryId: json['categoryId'] as String?,
      liveBroadcastContent: json['liveBroadcastContent'] as String?,
    );

Map<String, dynamic> _$$_SnippetToJson(_$_Snippet instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'categoryId': instance.categoryId,
      'liveBroadcastContent': instance.liveBroadcastContent,
    };

_$_Thumbnails _$$_ThumbnailsFromJson(Map<String, dynamic> json) =>
    _$_Thumbnails(
      thumbnailsDefault: json['thumbnailsDefault'] == null
          ? null
          : Default.fromJson(json['thumbnailsDefault'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : Default.fromJson(json['medium'] as Map<String, dynamic>),
      high: json['high'] == null
          ? null
          : Default.fromJson(json['high'] as Map<String, dynamic>),
      standard: json['standard'] == null
          ? null
          : Default.fromJson(json['standard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ThumbnailsToJson(_$_Thumbnails instance) =>
    <String, dynamic>{
      'thumbnailsDefault': instance.thumbnailsDefault,
      'medium': instance.medium,
      'high': instance.high,
      'standard': instance.standard,
    };

_$_Default _$$_DefaultFromJson(Map<String, dynamic> json) => _$_Default(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$$_DefaultToJson(_$_Default instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

_$_Statistics _$$_StatisticsFromJson(Map<String, dynamic> json) =>
    _$_Statistics(
      viewCount: json['viewCount'] as String?,
      likeCount: json['likeCount'] as String?,
      favoriteCount: json['favoriteCount'] as String?,
      commentCount: json['commentCount'] as String?,
    );

Map<String, dynamic> _$$_StatisticsToJson(_$_Statistics instance) =>
    <String, dynamic>{
      'viewCount': instance.viewCount,
      'likeCount': instance.likeCount,
      'favoriteCount': instance.favoriteCount,
      'commentCount': instance.commentCount,
    };
