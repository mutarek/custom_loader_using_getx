import 'package:custom_loader_using_getx/app/data/repo/tv_show_repo.dart';
import 'package:custom_loader_using_getx/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../../data/providers/api_provider.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
          () => HomeController(TvShowRepo(ApiProvider())),
    );
  }
}
