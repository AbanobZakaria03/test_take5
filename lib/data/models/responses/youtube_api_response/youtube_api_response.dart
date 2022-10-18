// To parse this JSON data, do
//
//     final youtubeApiResponse = youtubeApiResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'youtube_api_response.freezed.dart';
part 'youtube_api_response.g.dart';

YoutubeApiResponse youtubeApiResponseFromJson(String str) => YoutubeApiResponse.fromJson(json.decode(str));

String youtubeApiResponseToJson(YoutubeApiResponse data) => json.encode(data.toJson());

@freezed
class YoutubeApiResponse with _$YoutubeApiResponse {
  const factory YoutubeApiResponse({
    List<Item>? items,
  }) = _YoutubeApiResponse;

  factory YoutubeApiResponse.fromJson(Map<String, dynamic> json) => _$YoutubeApiResponseFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    String? id,
    Snippet? snippet,
    Statistics? statistics,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Snippet with _$Snippet {
  const factory Snippet({
    DateTime? publishedAt,
    String? channelId,
    String? title,
    String? description,
    Thumbnails? thumbnails,
    String? channelTitle,
    String? categoryId,
    String? liveBroadcastContent,
  }) = _Snippet;

  factory Snippet.fromJson(Map<String, dynamic> json) => _$SnippetFromJson(json);
}

@freezed
class Thumbnails with _$Thumbnails {
  const factory Thumbnails({
    Default? thumbnailsDefault,
    Default? medium,
    Default? high,
    Default? standard,
  }) = _Thumbnails;

  factory Thumbnails.fromJson(Map<String, dynamic> json) => _$ThumbnailsFromJson(json);
}

@freezed
class Default with _$Default {
  const factory Default({
    String? url,
    int? width,
    int? height,
  }) = _Default;

  factory Default.fromJson(Map<String, dynamic> json) => _$DefaultFromJson(json);
}

@freezed
class Statistics with _$Statistics {
  const factory Statistics({
    String? viewCount,
    String? likeCount,
    String? favoriteCount,
    String? commentCount,
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, dynamic> json) => _$StatisticsFromJson(json);
}