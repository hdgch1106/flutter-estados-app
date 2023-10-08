import 'package:estados_app/pages/pagina1_page.dart';
import 'package:estados_app/pages/pagina2_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      initialRoute: "pagina1",
      getPages: [
        GetPage(name: "/pagina1", page: () => const Pagina1Page()),
        GetPage(name: "/pagina2", page: () => const Pagina2Page()),
      ],
      /* routes: {
        "pagina1": (context) => const Pagina1Page(),
        "pagina2": (context) => const Pagina2Page(),
      }, */
    );
  }
}
