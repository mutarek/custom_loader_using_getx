import 'package:custom_loader_using_getx/app/data/model/tv_show_model.dart';
import 'package:get/get.dart';

import '../../../data/repo/tv_show_repo.dart';

class HomeController extends GetxController with StateMixin<List<TvShow>>{
TvShowRepo tvShowRepo;
HomeController(this.tvShowRepo);
List<TvShow> lsttvshow = [];

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getTvShow();
  }

@override
void onClose() {
  // TODO: implement onClose
  super.onClose();
}

void getTvShow() async
{
  try
      {
        change(null,status: RxStatus.loading());
        tvShowRepo.getTvShow("1").then((value){
          lsttvshow.clear();
          lsttvshow.addAll(value.tvshow!);
          change(lsttvshow,status: RxStatus.success());
        },onError: (err){
          change(null,status: RxStatus.error(err.toString()));
        });
      }
      catch(exception)
  {
    change(null,status: RxStatus.error(exception.toString()));
  }
}

}