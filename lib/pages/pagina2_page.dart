import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:estados/services/usuario_service.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: usuarioService.existeUsuario
        ? Text('Nombre: ${ usuarioService.usuario.nombre }')
        : Text('Pagina2'),
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
                  nombre: 'Frank',
                  edad: 27,
                  profesiones: ['Fullstack Developer', 'Video Jugador Experto']
                );
                usuarioService.usuario = newUser;
              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioService.cambiarEdad(30);
              }
            ),

            MaterialButton(
              child: Text('Añadir Profesión', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioService.agregarProfesion();
              }
            ),
          ],
        )
     ),
   );
  }
}