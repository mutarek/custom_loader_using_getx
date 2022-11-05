import 'dart:convert';

import 'package:get/get.dart';

import '../model/tv_show_model.dart';

class ApiProvider extends GetConnect {
  String appBaseUrl = "https://www.episodate.com/api/most-popular";

  ApiProvider() {
    httpClient.baseUrl = appBaseUrl;
    httpClient.defaultContentType = "application/json";
  }


  Future<TvShowModel> getTvShow(String page) async {
    try {
      final response = await get("?page=" + page);
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      }
      else {
        return TvShowModel.fromJson(response.body);
      }
    }catch(exception){
      return Future.error(exception.toString());
    }
  }

}