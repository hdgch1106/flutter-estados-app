import 'package:estados_app/controllers/usuario_controller.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    //print(Get.arguments);
    final usuarioCtrl = Get.find<UsuarioController>();
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
            onPressed: () {
              usuarioCtrl.cargarUsuario(
                Usuario(
                  nombre: "Hugo",
                  edad: 22,
                  profesiones: ["Fullstack", "Jugador"],
                ),
              );
              Get.snackbar("Alerta", "Usuario cargado.");
            },
          ),
          ElevatedButton(
            child: const Text("Cambiar Edad"),
            onPressed: () {
              usuarioCtrl.cambiarEdad(23);
            },
          ),
          ElevatedButton(
            child: const Text("Añadir Profesion"),
            onPressed: () {
              usuarioCtrl.agregarProfesion(
                  "Profesion ${usuarioCtrl.profesionesCount + 1}");
            },
          ),
          ElevatedButton(
            child: const Text("Cambiar tema"),
            onPressed: () {
              Get.changeTheme(Get.isDarkMode
                  ? ThemeData.light(useMaterial3: true)
                  : ThemeData.dark(useMaterial3: true));
            },
          )
        ],
      )),
    );
  }
}
