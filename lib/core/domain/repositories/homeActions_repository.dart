import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/dto/homeAction.dto.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/use_cases/homeActions_usecase.dart';

abstract class HomeActionsSource{
  Future<List<HomeActionDto>> getHomeActions();
}



class HomeActionsRepositoryImpl extends HomeActionsRepository {

  final HomeActionsSource _homeSource;

  HomeActionsRepositoryImpl(this._homeSource);

  @override
  Future<List<HomeActionDto>> getHomeActions() {
    return _homeSource.getHomeActions();
  }
  
}