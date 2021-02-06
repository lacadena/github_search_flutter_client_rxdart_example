import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_user.freezed.dart';
part 'github_user.g.dart';

@freezed
abstract class GitHubUser with _$GitHubUser{
  const factory GitHubUser({
    @JsonKey(ignore: true) int id,
    @required String login,
    @JsonKey(name:"avatar_url") String avatarUrl,
    @JsonKey(name:"html_url") String htmlUrl
  }) = _GitHubUser;

  factory GitHubUser.fromJson(Map<String, dynamic> json) => _$GitHubUserFromJson(json);
}