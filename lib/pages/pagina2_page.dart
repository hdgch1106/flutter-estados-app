import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 2"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text("Establecer Usuario"),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text("Cambiar Edad"),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text("Añadir Profesion"),
            onPressed: () {},
          )
        ],
      )),
    );
  }
}
