import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'github_user.freezed.dart';
part 'github_user.g.dart';

@freezed
abstract class GitHubUser with _$GitHubUser {
  const factory GitHubUser(String login,String avatarUrl,String htmlUrl,double score) = _GitHubUser;
  
  @JsonSerializable(explicitToJson: true)
  factory GitHubUser.fromJson(Map<String, dynamic> json)=>_$GitHubUserFromJson(json);
}



