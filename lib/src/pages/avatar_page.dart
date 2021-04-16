import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  final imageUrl1 =
      'https://cdn.vox-cdn.com/thumbor/Jy3ezPuozPuRA1uTBwUxA-yz7TQ=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22176756/TronLegacy2793.jpg';
  final imageUrl2 =
      'https://s3.us-east-1.amazonaws.com/dexerto-assets-production-cbbdf288/uploads/2021/02/10142012/Tron-Legacy.jpg?w=620';
  final imageUrl3 =
      "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/capitan-america-wyatt-russell-falcon-y-el-soldado-de-invierno-marvel-1616347629.jpg?resize=480:*";
  final imageUrl4 =
      "https://d25nlln9isiu5y.cloudfront.net/wp-content/uploads/2021/02/05141335/SWWVePF1-1024x576.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            child: CircleAvatar(
              child: Text('DNA'),
              backgroundColor: Colors.black87,
            ),
            margin: EdgeInsets.only(right: 20.0),
          ),
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl1),
              radius: 25,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.yellow[500],
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 20,
                      offset: Offset(0, 5)),
                ]),
            margin: EdgeInsets.only(right: 20.0),
          ),
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl3),
              radius: 25,
            ),
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(color: Colors.red, width: 4.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ]),
            margin: EdgeInsets.only(right: 20.0),
          ),
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl4),
              radius: 25,
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(color: Colors.pink, width: 4.0),
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
