import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introducao_getx/modules/home/home_bindings.dart';
import 'package:introducao_getx/modules/home/home_page.dart';

import 'modules/produto/produto_bindings.dart';
import 'modules/produto/produto_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      getPages: [
        GetPage(
          name: '/',
          binding: HomeBindings(),
          page: () => HomePage(),
        ),
        GetPage(
          name: '/produto',
          binding: ProdutoBindings(),
          page: () => ProdutoPage(),
        )
      ],
    );
  }
}
