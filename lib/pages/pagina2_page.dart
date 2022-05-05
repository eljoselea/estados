import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
        ? Text('${usuarioService.usuario!.nombre}')
        : Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                final newUser = new Usuario(
                  nombre: 'Jose A', 
                  edad: 32,
                  profesiones: [
                    'FullStack Developer', 'Video Jugador Experto'],
                    );
                usuarioService.usuario = newUser;
              },
              ),

              MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioService.cambiarEdad(18);
              },
              ),

              MaterialButton(
              child: Text('Añadir profesión', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioService.agregarProfesion();
              },
              ),

          ],
        )
        ),
    );
  }
}