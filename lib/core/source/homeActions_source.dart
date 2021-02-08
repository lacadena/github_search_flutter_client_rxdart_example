import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search_flutter_client_rxdart_example/app/blocs/search_bloc.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/dto/homeAction.dto.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/repositories/homeActions_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/core/injectors/injector.dart';

import '../../app/presentation/custom/github_search_delegate.dart';

class HomeActionsSourceImpl implements HomeActionsSource {
  
  @override
  Future<List<HomeActionDto>> getHomeActions() async {
    return [
      HomeActionDto(action: (BuildContext context)async{
        final searchBloc = GitHubSearchBloc(Injector().provideGitHubSearchUseCase());
        final user = await showSearch<dynamic>(
          context: context,
          delegate: GitHubSearchDelegate(searchBloc:searchBloc,searchType:'users'),
        );
        searchBloc.dispose();
        
      },icon:  FontAwesomeIcons.githubAlt,title: 'Users'),
      //TODO: To add more search modules, add a HomeActionDto in this service with each onClick function, title and icon image.
      HomeActionDto(action: (BuildContext context)async{
        final searchBloc = GitHubSearchBloc(Injector().provideGitHubSearchUseCase());
        final repo = await showSearch<dynamic>(
          context: context,
          delegate: GitHubSearchDelegate(searchBloc:searchBloc,searchType:'repositories'),
        );
        searchBloc.dispose();
      },icon: FontAwesomeIcons.server,title: 'Repositories'),
      // HomeActionDto(action: ()=>{},icon: FontAwesomeIcons.solidBookmark,title: 'Topics'),
      // HomeActionDto(action: ()=>{},icon: FontAwesomeIcons.connectdevelop,title: 'Commits'),
    ];
  }
  
}

// class GitHubUser {
//   GitHubUser(
//       {@required this.login, @required this.avatarUrl, @required this.htmlUrl,@required this.score});

//   final String login;
//   final String avatarUrl;
//   final String htmlUrl;
//   final double score;

//   factory GitHubUser.fromJson(Map<String, dynamic> json) {
//     if (json == null) {
//       return null;
//     }
//     final login = json['login'];
//     if (login != null) {
//       final avatarUrl = json['avatar_url'];
//       final htmlUrl = json['html_url'];
//       final score = json['score'];
//       return GitHubUser(
//         login: login,
//         avatarUrl: avatarUrl,
//         htmlUrl: htmlUrl,
//         score: score,
//       );
//     }
//     return null;
//   }

//   /* Sample response data for a given user
//   {
//       "login": "bizz84",
//       "id": 153167,
//       "node_id": "MDQ6VXNlcjE1MzE2Nw==",
//       "avatar_url": "https://avatars0.githubusercontent.com/u/153167?v=4",
//       "gravatar_id": "",
//       "url": "https://api.github.com/users/bizz84",
//       "html_url": "https://github.com/bizz84",
//       "followers_url": "https://api.github.com/users/bizz84/followers",
//       "following_url": "https://api.github.com/users/bizz84/following{/other_user}",
//       "gists_url": "https://api.github.com/users/bizz84/gists{/gist_id}",
//       "starred_url": "https://api.github.com/users/bizz84/starred{/owner}{/repo}",
//       "subscriptions_url": "https://api.github.com/users/bizz84/subscriptions",
//       "organizations_url": "https://api.github.com/users/bizz84/orgs",
//       "repos_url": "https://api.github.com/users/bizz84/repos",
//       "events_url": "https://api.github.com/users/bizz84/events{/privacy}",
//       "received_events_url": "https://api.github.com/users/bizz84/received_events",
//       "type": "User",
//       "site_admin": false,
//       "score": 1.0
//     }
//     */

//   @override
//   String toString() => 'username: $login';
// }
