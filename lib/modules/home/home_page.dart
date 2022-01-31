import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  // final controller = Get.find<HomeController>();

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.adicionarProduto,
      ),
      body: Obx(() => ListView.builder(
          itemCount: controller.produtos.length,
          itemBuilder: (_, index) {
            final produto = controller.produtos[index];
            return ListTile(
                onTap: () {
                  Get.toNamed('/produto', arguments: produto);
                },
                title: Text(produto));
          })),
    );
  }
}
