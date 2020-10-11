import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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

              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

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