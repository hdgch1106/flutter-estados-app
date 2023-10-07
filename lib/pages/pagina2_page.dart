import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/providers/usuario_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioProvider = Provider.of<UsuarioProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: usuarioProvider.existeUsuario
            ? Text(usuarioProvider.state.usuario!.nombre)
            : const Text("Pagina 2"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text("Establecer Usuario"),
            onPressed: () {
              final newUser = Usuario(
                nombre: "Hugo Grados",
                edad: 22,
                profesiones: [
                  "Desarrollador Flutter",
                  "Jugador Profesional PES"
                ],
              );

              usuarioProvider.usuario = newUser;
            },
          ),
          ElevatedButton(
            child: const Text("Cambiar Edad"),
            onPressed: () {
              usuarioProvider.cambiarEdad(25);
            },
          ),
          ElevatedButton(
            child: const Text("Añadir Profesion"),
            onPressed: () {
              usuarioProvider.agregarProfesion();
            },
          )
        ],
      )),
    );
  }
}
