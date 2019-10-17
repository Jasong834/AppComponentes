import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();

}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _correo = '';
  String _password = '';
  String _fecha = '';
  bool passwordVisible = true;

  String _opcionSeleccionada = 'Volar';

  List <String> _poderes = ['Volar','Fuerza','Rayos-x','Super Aliento'];

  TextEditingController _inputFieldDateController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
          Divider(), 
        ],

      ),
      
    );
  }

  Widget _crearInput() {
    
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        border : OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)   
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(width: 1,color: Colors.red),
        ),         
        hintText: 'Ingrese su nombre',
        labelText: 'Nombre',
        labelStyle: TextStyle(color: Colors.red),        
        icon: Icon(Icons.account_circle,color: Colors.red,)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor; 
        });
      },
    );

  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        border : OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)   
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(width: 1,color: Colors.red),
        ),         
        hintText: 'Ingrese su correo',
        labelText: 'Correo',
        labelStyle: TextStyle(color: Colors.red),
        icon: Icon(Icons.email,color: Colors.red,)
      ),
      onChanged: (valor){
        setState(() {
          _correo = valor; 
        });
      },
    );
  }

   Widget _crearPassword() {
    return TextField(
      obscureText: passwordVisible,
      cursorColor: Colors.red,
      decoration:InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0) 
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(width: 1,color: Colors.red),
        ),  
        hintText: 'Ingresa tu Contraseña ',
        labelText: 'Contraseña',
        labelStyle: TextStyle(color: Colors.red),
        icon: Icon(Icons.lock_outline,color: Colors.red),
        suffixIcon: IconButton( 
          icon: Icon(
            passwordVisible
            ? Icons.visibility
            : Icons.visibility_off,
            color: Colors.red,
        ),
        onPressed: () {
          setState(() {    
              passwordVisible = !passwordVisible;
            } );
          }
        )
      ),
      onChanged: (valor){
        setState(() {
            _password = valor;
          }
        );
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border : OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)   
        ),
        hintText: 'Seleccione la fecha',
        labelText: 'Fecha',
        icon: Icon(Icons.calendar_today,color: Colors.red,)
      ),
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusScopeNode());
        _selectDay(context);

      },
    );  
  }

  void _selectDay(BuildContext context)async {

    DateTime picked  = await showDatePicker(
      context: context,
      initialDate:  new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025), 
      locale: Locale('es','ES'),
    );

    if (picked != null) {
      setState(() {
       _fecha = picked.toString(); 
       _inputFieldDateController.text = _fecha; 
      });
    }

  }

  List<DropdownMenuItem<String>> getOpcionesDropDown(){

    List<DropdownMenuItem<String>>lista = new List();

    _poderes.forEach((poder){
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value : poder,
      ));
    });

    return lista;

  }

  Widget _crearDropDown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all,color:Colors.red,),
        SizedBox(width: 20.0),
        DropdownButton(
          value : _opcionSeleccionada, 
          items : getOpcionesDropDown(),
          onChanged: (opt){
            setState(() {
              _opcionSeleccionada = opt;
            });
          },
        ), 
      ],
    );
  }

  Widget _crearPersona(){
    return  ListTile(
      title: Text('Nombre:$_nombre'),
      subtitle: Text('Email:$_correo'),
      trailing: Text('Poder:'+_opcionSeleccionada),
    );

  }

}