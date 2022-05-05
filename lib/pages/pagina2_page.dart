import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              onPressed: (){},
              child: Text('Establecer Usuario', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              ),

              MaterialButton(
              onPressed: (){},
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              ),

              MaterialButton(
              onPressed: (){},
              child: Text('Añadir profesión', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              ),

          ],
        )
        ),
    );
  }
}