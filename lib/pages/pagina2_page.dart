import 'package:flutter/material.dart';

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: StreamBuilder(
          stream: usuarioService.usuarioStream ,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
            return snapshot.hasData
            ? Text('Nombre: ${ snapshot.data.nombre }')
            : Text('Pagina2');
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

                final nuevoUsuario = new Usuario(nombre: 'Francisco', edad: 27);

                usuarioService.cargarUsuario(nuevoUsuario);
              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                usuarioService.cargarEdad(30);
              }
            ),

            MaterialButton(
              child: Text('Añadir Profesión', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

              }
            ),
          ],
        )
     ),
   );
  }
}