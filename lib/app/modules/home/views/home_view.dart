import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Loader'),
      ),
      body: controller.obx(
          (state) => ListView.separated(
                separatorBuilder: (_, index) {
                  return const Divider(
                    color: Colors.grey,
                  );
                },
                padding: const EdgeInsets.all(10),
                physics: const BouncingScrollPhysics(),
                itemCount: state!.length,
                itemBuilder: (_, position) {
                  return ListTile(
                    leading: SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          child: Image.network(
                              state[position].image_thumbnail_path!),
                        )),
                    title: Text(state![position].name.toString()),
                  );
                },
              ),
          onLoading: SkeletonListView(),
          onError: (error) => Center(
                child: Text(error.toString()),
              )),
    );
  }
}
