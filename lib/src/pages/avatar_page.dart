import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  final imageUrl1 =
      'https://cdn.vox-cdn.com/thumbor/Jy3ezPuozPuRA1uTBwUxA-yz7TQ=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22176756/TronLegacy2793.jpg';

  final imageUrl2 =
      'https://s3.us-east-1.amazonaws.com/dexerto-assets-production-cbbdf288/uploads/2021/02/10142012/Tron-Legacy.jpg?w=620';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            child: CircleAvatar(
              child: Text('CA'),
              backgroundColor: Colors.black87,
            ),
            margin: EdgeInsets.only(right: 20.0),
          ),
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl1),
              radius: 25,
            ),
            margin: EdgeInsets.only(right: 20.0),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: FadeInImage(
            image: NetworkImage(imageUrl2),
            placeholder: AssetImage('assets/jar-loading.gif'),
          ),
        ),
      ),
    );
  }
}
