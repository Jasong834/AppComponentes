import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Avatar Page'),
        
        actions: <Widget>[  
          Container(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.vixdata.io/pd/jpg-large/es/sites/default/files/r/rip-stan-lee.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin:  EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.deepPurple,   
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image:  NetworkImage('https://media.wired.com/photos/5bea0b21db23f3775e466778/master/pass/StanLee_comics_EE44KB.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        ),
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
}
