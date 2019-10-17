import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),          
          _cardTipo2(),
          SizedBox(height:30.0),
          _cardTipo1(),
          SizedBox(height:30.0),                    
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.red,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),      
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.red),
            title: Text('Información en la tarjeta'),
            subtitle: Text('Sometimes the primary action area of a card is the card itself.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){

                },
              ),
              FlatButton(
                child: Text('OK!'),
                onPressed: (){
 
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2(){
    final card= Container(
      child: Column(
        children: <Widget>[

          FadeInImage(
            
              image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2017/03/landscape-photography-tom-archer-2.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 250,
              fit: BoxFit.cover,
          ),

         // Image(
           // 
          //),
          Container(
            padding: EdgeInsets.all(10.0),
            child : Text('Algo')
          ),
        ],

      ),

    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset:  Offset(2.0,10.0)
          )
        ]
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),
    );
  
  }

}

