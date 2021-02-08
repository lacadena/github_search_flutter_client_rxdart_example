import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'github_user.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
abstract class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository(String name, String fullName, bool private,GitHubUser owner,String url,int openIssuesCount,double score,int size,) = _GitHubRepository;
  
  @JsonSerializable(explicitToJson: true)
  factory GitHubRepository.fromJson(Map<String, dynamic> json)=>_$GitHubRepositoryFromJson(json);
}
// import 'package:flutter/foundation.dart';
// import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_user.dart';

// // TODO: Convert to use freezed
// class GitHubRepository {
//   GitHubRepository(
//       {
//         @required this.name, 
//         @required this.fullName, 
//         @required this.private,
//         @required this.owner,
//         @required this.url,
//         @required this.openIssuesCount,
//         @required this.score,
//         @required this.size,
//       });

//   final String name;
//   final String fullName;
//   final bool private;
//   final GitHubUser owner;
//   final String url;
//   final double score;
//   final int openIssuesCount;
//   final int size;


//   factory GitHubRepository.fromJson(Map<String, dynamic> json) {
//     if (json == null) {
//       return null;
//     }
//     final name = json['name'];
//     if (name != null) {
//       return GitHubRepository(
//         name: name,
//         fullName: json['full_name'],
//         private: json['private'],
//         owner: (json['owner']!=null)?GitHubUser.fromJson(json['owner']):null,
//         url: json['html_url'],
//         score: json['score'],
//         openIssuesCount: json['open_issues_count'],
//         size: json['size'],
//       );
//     }
//     return null;
//   }

//   @override
//   String toString() => 'Repository: $name';
// }
