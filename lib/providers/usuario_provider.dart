import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioProvider with ChangeNotifier {
  UsuarioProviderState _state = UsuarioProviderState(
      usuario: Usuario(nombre: "no-name", edad: 0, profesiones: []));

  UsuarioProviderState get state => _state;
  set state(UsuarioProviderState valor) {
    _state = valor;
    notifyListeners();
  }

  bool get existeUsuario => state.usuario!.nombre != "no-name" ? true : false;

  set usuario(Usuario user) {
    state = state.copyWith(usuario: user);
  }

  void cambiarEdad(int edad) {
    state.usuario!.edad = edad;
    notifyListeners();
  }

  void agregarProfesion() {
    state.usuario!.profesiones
        .add("Profesion ${state.usuario!.profesiones.length + 1}");
    notifyListeners();
  }

  void removerUsuario() {
    state = state.copyWith(
        usuario: Usuario(nombre: "no-name", edad: 0, profesiones: []));
  }
}

class UsuarioProviderState {
  final Usuario? usuario;

  UsuarioProviderState({
    this.usuario,
  });

  UsuarioProviderState copyWith({
    Usuario? usuario,
  }) =>
      UsuarioProviderState(
        usuario: usuario ?? this.usuario,
      );
}
