import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final bloc = BlocProvider.of<UsuarioCubit>(context, listen:false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina2'),
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
                  nombre: 'Josea',
                  edad: 32,
                  profesiones: [
                    'FullStack Developer',
                    'Videojugador Veterano'
                  ]
                );
                bloc.seleccionarUsuario(newUser);
              },
              ),

              MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                bloc.cambiarEdad(18);
              },
              ),

              MaterialButton(
              child: Text('Añadir profesión', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                bloc.agregarProfesion();

              },
              ),

          ],
        )
        ),
    );
  }
}