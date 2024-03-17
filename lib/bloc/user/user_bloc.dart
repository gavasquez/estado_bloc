import 'package:bloc/bloc.dart';
import 'package:estado_bloc/models/usuario.dart';
import 'package:flutter/material.dart';
part 'user_state.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) {
      emit(UserSetState(event.user));
    });
    on<ChangeUserAge>((event, emit) {
      if (!state.existUser) return;
      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });
    on<AddUserProfesion>((event, emit) {
      if (!state.existUser) return;
      emit(UserSetState(state.user!.copyWith(
          profesiones: [event.profesion, ...state.user!.profesiones])));
    });
    on<DeleteUser>((event, emit){
      emit(const UserInitialState());
    });
  }
}
