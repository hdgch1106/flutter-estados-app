import 'package:estados_app/bloc/user/user_bloc.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);
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
                profesiones: ["FullStack Developer"],
              );

              userBloc.add(ActivateUserEvent(newUser));
            },
          ),
          ElevatedButton(
            child: const Text("Cambiar Edad"),
            onPressed: () {
              userBloc.add(ChangeUserAge(25));
            },
          ),
          ElevatedButton(
            child: const Text("Añadir Profesion"),
            onPressed: () {
              userBloc.add(AddProfesion("Mi profesion"));
            },
          )
        ],
      )),
    );
  }
}
