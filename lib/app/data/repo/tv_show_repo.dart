import 'package:custom_loader_using_getx/app/data/providers/api_provider.dart';

import '../model/tv_show_model.dart';

class TvShowRepo{
  final ApiProvider apiProvider;

  TvShowRepo(this.apiProvider);


  Future<TvShowModel> getTvShow(String page)=>
    apiProvider.getTvShow(page);

}