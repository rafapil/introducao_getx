import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:introducao_getx/modules/home/home_controller.dart';
import 'package:introducao_getx/repository/produto_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProdutoRepository());
    Get.put(HomeController());
  }
}
