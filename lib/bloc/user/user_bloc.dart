import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUserEvent>((event, emit) {
      emit(UserSetState(event.user));
    });

    on<ChangeUserAge>((event, emit) {
      if (!state.existUser) return;

      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });

    on<AddProfesion>((event, emit) {
      if (!state.existUser) return;
      final List<String> profesion = [...state.user!.profesiones];
      profesion.add(event.profesion);
      emit(UserSetState(state.user!.copyWith(profesiones: profesion)));
    });

    on<DeleteUser>((event, emit) {
      emit(const UserInitialState());
    });
  }
}
