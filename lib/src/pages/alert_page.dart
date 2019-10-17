import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.red,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()=> _mostrarAlerta(context),
        )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      
    );
  }

  void _mostrarAlerta(BuildContext context){

    showDialog(

      context: context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Text('Prueba'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Contenido de la alerta'),
              FlutterLogo(size:100)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('OK!'),
              textColor: Colors.red,
              onPressed: ()=>Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Cancelar'),
              textColor: Colors.red,
              onPressed: ()=>Navigator.of(context).pop(),
            )
          ],
        );

      }

    );


  }



}

