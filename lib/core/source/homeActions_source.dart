import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/dto/homeAction.dto.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_user.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/repositories/homeActions_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_api_wrapper.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_service.dart';

import '../../app/presentation/custom/github_search_delegate.dart';

class HomeActionsSourceImpl implements HomeActionsSource {
  
  @override
  Future<List<HomeActionDto>> getHomeActions() async {
    return [
      HomeActionDto(action: (BuildContext context)async{
        final searchService = GitHubSearchService(apiWrapper: GitHubSearchAPIWrapper());
        final user = await showSearch<GitHubUser>(
          context: context,
          delegate: GitHubSearchDelegate(searchService),
        );
        searchService.dispose();
        
      },icon:  FontAwesomeIcons.githubAlt,title: 'Users'),
      //TODO: To add more search modules, add a HomeActionDto in this service with each onClick function, title and icon image.
      // HomeActionDto(action: ()=>{},icon: FontAwesomeIcons.server,title: 'Repositories'),
      // HomeActionDto(action: ()=>{},icon: FontAwesomeIcons.solidBookmark,title: 'Topics'),
      // HomeActionDto(action: ()=>{},icon: FontAwesomeIcons.connectdevelop,title: 'Commits'),
    ];
  }
  
}