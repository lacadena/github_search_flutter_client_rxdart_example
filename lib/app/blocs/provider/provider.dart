
import 'package:github_search_flutter_client_rxdart_example/app/blocs/provider/bloc.dart';
import 'package:github_search_flutter_client_rxdart_example/app/blocs/search_bloc.dart';

import '../homePage_bloc.dart';
import 'bloc_cache.dart';

class Provider {
  static T of<T extends Bloc>(Function instance) {
    switch (T) {
      case HomePageBloc:
        {
          return BlocCache.getBlocInstance("HomePageBloc", instance);
        }
      case GitHubSearchBloc:
        {
          return BlocCache.getBlocInstance("GitHubSearchBloc", instance);
        }
    }
    return null;
  }

  static void dispose<T extends Bloc>() {
    switch (T) {
      case HomePageBloc:
        {
          BlocCache.dispose("HomePageBloc");
          break;
        }
      case GitHubSearchBloc:
        {
          BlocCache.dispose("GitHubSearchBloc");
          break;
        }
    }
  }
}
