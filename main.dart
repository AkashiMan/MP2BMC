import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Kawawang Nathan Santos",
        home: Scaffold(
            appBar: AppBar(
              title: Text('Ble Gumana HAHAHA'),
              backgroundColor: Colors.grey,
            ),
            backgroundColor: Colors.greenAccent,
            body:Builder(builder:(context)=> Center(
              child: Column(children: [
                Text(
                  'May Nagawa!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800]),
                ),
                Text(
                  'Discover JC The Bobo',
                  style:
                      TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),
                ),
                Image.network(
                  'https://th.bing.com/th/id/OIP.9E9PHIMDZHFonDsMxoZzJwHaFL?rs=1&pid=ImgDetMain',
                  height: 350,
                ),
                ElevatedButton(
                  child: Text('Contact Us'),
                  onPressed: () => contactUs(context),
                )
              ]),
            ))));
  }
} // endLine

void contactUs(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('mail us at grc@gmail.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ], //actions
        ); //return
      }); // builder
} // voidContactUs
