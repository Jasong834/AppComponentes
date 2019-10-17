import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
 
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwicth(),
            Expanded(
             child : _crearImagen()
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.red,
      label: 'Tamaño',
      value: _valorSlider,
      divisions: 100,
      min: 10,
      max: 400,
      onChanged: (_bloquearCheck ) ? null: (valor){
        setState(() {
          _valorSlider  = valor ;
        });
      },
    );

  }

  Widget  _crearImagen() {
    return Container(
      child: FadeInImage(    
        image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/The_Flash_Vol_5_60.png/250px-The_Flash_Vol_5_60.png'),
        placeholder: AssetImage('assets/jar-loading.gif'),
        width: _valorSlider,
        fit: BoxFit.contain,
      ),
    );
   
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquear Imagen'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
        _bloquearCheck = valor;          
        });
      },
    );

  }

  Widget _crearSwicth() {
    return SwitchListTile(
      title: Text('Bloquear Imagen'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
        _bloquearCheck = valor;          
        });
      },
    );

  }
}