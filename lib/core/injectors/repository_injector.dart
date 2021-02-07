
import 'package:github_search_flutter_client_rxdart_example/core/domain/repositories/homeActions_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/use_cases/homeActions_usecase.dart';
import 'package:github_search_flutter_client_rxdart_example/core/injectors/source_injector.dart';

class RepositoryInjector{
  static RepositoryInjector _singleton;

  factory RepositoryInjector(){
    if(_singleton == null)_singleton = RepositoryInjector._();
    
    return _singleton;

  }

  RepositoryInjector._();

  HomeActionsRepository provideHomeActionsRepository(){
    return HomeActionsRepositoryImpl(
      DataSourceInjector().provideHomeActionsSource(),
    );
  }
}