import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './produto_controller.dart';

class ProdutoPage extends GetView<ProdutoController> {
  const ProdutoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProdutoPage'),
      ),
      body: Center(
        child: Text(Get.arguments),
      ),
    );
  }
}
