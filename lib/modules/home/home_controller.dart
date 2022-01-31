import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:introducao_getx/repository/produto_repository.dart';

class HomeController extends GetxController {
  final produtos = RxList<String>([]);
  final _produtoRepository = Get.find<ProdutoRepository>();

  @override
  void onInit() {
    ever(produtos, (produtosEstado) {
      print('Produtos foi alterado $produtosEstado');
    });

    super.onInit();
  }

  @override
  void onReady() {
    final produtosData = _produtoRepository.recuperarProdutos();
    // produtos.value = produtosData;
    produtos.assignAll(produtosData);
    super.onReady();
  }

  void adicionarProduto() {
    produtos.add('Arquiteto Flutter');
  }
}
