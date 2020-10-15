part of 'usuario_cubit.dart';

@immutable
abstract class UsuarioState {}

// Estado inicial
class UsuarioInitial extends UsuarioState {
  final existeUsuario = false;
}

class UsuarioActivo extends UsuarioState {
  final existeUsuario = true;
  final Usuario usuario;

  UsuarioActivo(this.usuario);
}

