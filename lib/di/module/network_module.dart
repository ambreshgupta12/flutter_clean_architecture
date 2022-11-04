import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_clean_architecture/res/constants.dart';

import '../../data/sources/remote/service/movie_api_service.dart';


@module
abstract class NetworkModule {
  @singleton
  Dio get dio {
    final dio = Dio();
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: false,
          request: true,
          requestBody: true));
    }
    return dio;
  }

  @singleton
  Connectivity get connectivity => Connectivity();

  @singleton
  MovieApiService movieApiService(Dio dio) {
    return MovieApiService(
      dio
        ..options.queryParameters = {
          Constants.apiKeyName: Constants.apiKey,
        },
      Constants.apiBaseUrl,
    );
  }
}
