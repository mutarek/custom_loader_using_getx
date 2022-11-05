import 'package:get/get.dart';

import '../modules/home/binding/HomeBinding.dart';
import '../modules/home/views/home_view.dart';
import 'app_routes.dart';

class AppPage{

  AppPage._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}