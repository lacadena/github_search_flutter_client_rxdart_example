import 'dart:async';
import 'dart:developer';
import 'dart:convert';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/result.dart';
import 'package:http/http.dart' as http;

class ApiBaseSource {
  final Duration timeout = Duration(seconds: 3);
  Uri uriApiSource(String queryParameter, String endpoint) => Uri(
        scheme: 'https',
        host: 'api.github.com',
        path: 'search/' + endpoint,
        queryParameters: {'q': queryParameter},
      );

  Future<Result<T>> get<T>(String endpoint, String queryParameter,
      dynamic Function(dynamic value) mapperFunction) async {
    try {
      final uri = uriApiSource(queryParameter, endpoint);
      final response = await http.get(uri).timeout(timeout);
      return await _manageResponse(response, mapperFunction);
    } catch (ex) {
      log('Exception', error: ex);
      return Result<T>.error(code: 400,message: ex.toString());
    }
  }

  Future<Result<T>> _manageResponse<T>(http.Response response, Function mapperFunction) async {
    log(response.statusCode.toString(), name: 'statusCode');
    if (response.statusCode == 200 || response.statusCode == 201) {
      return Result<T>.success(mapperFunction(_getBody((response.body !=null) ? response.bodyBytes : null)));
    } else {
      return _manageError<T>(response);
    }
  }

  dynamic _getBody(body) {
    if(body!=null){
      var bodyString = utf8.decode(body);
      try {
        return json.decode(bodyString);
      } catch (ex) {
        log(ex.toString(), name: 'error');
        return bodyString;
      }
    }else{
      return {};
    }
  }

  Result<T> _manageError<T>(http.Response response) {
    if (response.statusCode >= 500) {
      try {
        return Result<T>.error(message: "Error inesperado. Verifica tu conexión a internet.");
      } catch (ex) {
        log(ex.toString(), name: 'error');
        return Result<T>.error(message: "Error inesperado. Verifica tu conexión a internet.");
      }
    } else if (response.statusCode == 401) {
      return Result<T>.error(message: "Error inesperado. Verifica tu conexión a internet.");
    } else {
      return _errorFromMap(response);
    }
  }

  Result<T> _errorFromMap<T>(http.Response response) {
    try {
      Map<String, dynamic> body = jsonDecode(response.body);
      String description = body['message'];
      description = description ?? "Error inesperado. Verifica tu conexión a internet.";
      int code = body.containsKey('statusCode') ? int.parse(body['statusCode']) : 0;
      return Result<T>.error(message: description, code: code);
    } catch (ex) {
      log(ex.toString(), name: 'error');
      return Result<T>.error(
          message: "Error inesperado. Verifica tu conexión a internet.", code: response.statusCode);
    }
  }
}
