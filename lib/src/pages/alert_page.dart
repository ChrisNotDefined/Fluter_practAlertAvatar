import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: Text('Display Alert'),
              onPressed: () => _showAlert(context),
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow[800],
                shape: StadiumBorder(),
              ),
            ),
            ElevatedButton.icon(
              label: Text('Display My Alert'),
              icon: Icon(Icons.alarm),
              onPressed: () => _showAlertRouted(
                context,
                'avatar',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green[800],
                shape: StadiumBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text('Títulos'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Alertado'),
              FlutterLogo(
                size: 100,
              ),
            ],
          ),
          actions: [
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  _showAlertRouted(BuildContext context, String routeName) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text('Redireccionar?'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Vas a abandonar tu página actual, ¿deseas continuar?'),
              Image(
                image: AssetImage('assets/alerta.png'),
              )
            ],
          ),
          actions: [
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.popAndPushNamed(context, routeName);
              },
            ),
          ],
        );
      },
    );
  }
}
