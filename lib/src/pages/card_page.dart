import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String imageUrl =
      'https://lh3.googleusercontent.com/proxy/3layle9MDgK-ONgN1d2ub4EHEf8CNn8t2m2w_EMzMEM7BgyWMMRolzPsi1D73MxUOWKlKh9kn1FQMW5_bKGw57xCWJvjHK50M1uJE3SUjrGEemrkSgPUgUcpVKdp8ABy8OHLYj55kTkw7ubDLkU';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        children: <Widget>[
          _cardt1(),
          SizedBox(height: 30,),
          _cardt2(),
          SizedBox(height: 30,),
          _cardt1(),
          SizedBox(height: 30,),
          _cardt2(),
          SizedBox(height: 30,),
          _cardt1(),
          SizedBox(height: 30,),
          _cardt2(),
          SizedBox(height: 30,),
          _cardt1(),
          SizedBox(height: 30,),
          _cardt2(),
          SizedBox(height: 30,),
          _cardt1(),
          SizedBox(height: 30,),
          _cardt2(),
          SizedBox(height: 30,),
        ],
      ),
    );
  }

  Widget _cardt1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.assistant_photo, color: Colors.cyanAccent),
            title: Text('Una persona escribió esto...'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardt2() {
    final card = Container(
        child: Column(
      children: <Widget>[
        FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 300,
            fit: BoxFit.cover),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Deep Space'),
        )
      ],
    ));

    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: card,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, offset: Offset(0, 10.0), blurRadius: 15),
        ],
      ),
    );
  }
}
