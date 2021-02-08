import 'package:github_search_flutter_client_rxdart_example/core/domain/use_cases/homeActions_usecase.dart';
import 'package:github_search_flutter_client_rxdart_example/core/injectors/repository_injector.dart';

class Injector{
  static Injector _singleton;
  factory Injector(){
    if(_singleton == null)_singleton = Injector._();
    return _singleton;
  }
  Injector._();

  HomeActionsUseCase provideHomeActionsUseCase(){
    return HomeActionsUseCaseImpl(
      RepositoryInjector().provideHomeActionsRepository()
    );
  }
}