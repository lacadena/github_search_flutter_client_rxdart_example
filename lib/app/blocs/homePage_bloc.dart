

import 'package:github_search_flutter_client_rxdart_example/app/blocs/provider/bloc.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/dto/homeAction.dto.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/use_cases/homeActions_usecase.dart';

class HomePageBloc extends Bloc {

  final HomeActionsUseCase _homeActionsUseCase;

  HomePageBloc(this._homeActionsUseCase);


  @override
  void dispose() {}

   Future<List<HomeActionDto>> getHomeActions(){
     return _homeActionsUseCase.getHomeActions();
   }
}