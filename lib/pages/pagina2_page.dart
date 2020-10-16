import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';
import 'package:estados/bloc/usuario/usuario_bloc.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // ignore: close_sinks
    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pagina2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

                final newUser = new Usuario(
                  nombre: 'Juan Francisco',
                  edad: 27,
                  profesiones: [
                    'Developer Backend',
                    'Videojugador Expert'
                  ]
                );

                usuarioBloc.add( ActivarUsuario( newUser) );
              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioBloc.add( CambiarEdad(30) );
              }
            ),

            MaterialButton(
              child: Text('Añadir Profesión', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

                // usuarioBloc.add( AgregarProfesion('Nueva Profesion') );

              }
            ),
          ],
        )
     ),
   );
  }
}