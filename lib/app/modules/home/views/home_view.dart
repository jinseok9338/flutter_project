import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/common/util/exports.dart';
import 'package:flutter_getx_template/app/data/api_helper.dart';
import 'package:flutter_getx_template/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/modules/home/views/widgets/post_widget.dart';
import 'package:flutter_getx_template/app/modules/widgets/base_widget.dart';
import 'package:flutter_getx_template/app/modules/widgets/custom_appbar_widget.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(
        addBackButton: false,
        title: Strings.home,
      ),
      body: Obx(
        () {
          return ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
            itemCount: controller.dataList.length,
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final Post _data = controller.dataList[index];
              return PostWidget(
                post: _data,
              );
            },
          );
        },
      ),
    );
  }
}
