import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: usuarioServie.usuarioStream,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
            return !snapshot.hasData
                ? const Text("Pagina 2")
                : Text(snapshot.data!.nombre);
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text("Establecer Usuario"),
            onPressed: () {
              final newUser = Usuario(
                nombre: "Hugo",
                edad: 22,
                profesiones: ["Desarrollador Flutter", "Python"],
              );
              usuarioServie.cargarUsuario(newUser);
            },
          ),
          ElevatedButton(
            child: const Text("Cambiar Edad"),
            onPressed: () {
              usuarioServie.cambiadEdad(23);
            },
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
