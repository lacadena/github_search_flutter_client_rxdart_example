import 'package:github_search_flutter_client_rxdart_example/core/domain/repositories/homeActions_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/core/source/homeActions_source.dart';

class DataSourceInjector {
  static DataSourceInjector _singleton;

  factory DataSourceInjector(){
    if(_singleton==null)_singleton=DataSourceInjector._();
    return _singleton;
  }

  DataSourceInjector._();

  HomeActionsSource provideHomeActionsSource(){
    return HomeActionsSourceImpl();
  }

 
}