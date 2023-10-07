import 'package:estados_app/bloc/usuario/usuario_cubit.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.read<UsuarioCubit>();

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
              final newUser = Usuario(
                nombre: "Hugo Grados",
                edad: 22,
                profesiones: [],
              );
              usuarioCubit.seleccionarUsuario(newUser);
            },
          ),
          ElevatedButton(
            child: const Text("Cambiar Edad"),
            onPressed: () {
              usuarioCubit.cambiarEdad(23);
            },
          ),
          ElevatedButton(
            child: const Text("Añadir Profesion"),
            onPressed: () {
              final profesiones = [
                "Desarrollador Flutter",
                "Jugador Profesional"
              ];
              usuarioCubit.agregarProfesion(profesiones);
            },
          )
        ],
      )),
    );
  }
}
