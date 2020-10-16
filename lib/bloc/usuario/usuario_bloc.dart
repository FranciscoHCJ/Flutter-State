
import 'package:bloc/bloc.dart';

import 'package:estados/models/usuario.dart';
import 'package:meta/meta.dart';

part 'usuario_state.dart';
part 'usuario_event.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  
  UsuarioBloc() : super( UsuarioState() );

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
    
    if ( event is ActivarUsuario ) {
      yield UsuarioState( user: event.usuario );    
    } else if ( event is CambiarEdad ) {
      yield UsuarioState( 
        user: state.usuario.copyWith( edad: event.edad )
      );
    } else if ( event is AgregarProfesion) {
      yield UsuarioState(
        user: state.usuario.copyWith( profesiones: event.profesion )
      );
    }

  }




}