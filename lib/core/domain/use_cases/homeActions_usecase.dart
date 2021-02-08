import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/dto/homeAction.dto.dart';

abstract class HomeActionsRepository{
  Future<List<HomeActionDto>> getHomeActions();
}

abstract class HomeActionsUseCase{
  Future<List<HomeActionDto>> getHomeActions();
}

class HomeActionsUseCaseImpl implements  HomeActionsUseCase{

  final HomeActionsRepository _homeRepository;

  HomeActionsUseCaseImpl(this._homeRepository);

  @override
  Future<List<HomeActionDto>> getHomeActions() {
    return _homeRepository.getHomeActions();
  }
  
}