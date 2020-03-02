import 'package:flutter/material.dart';
import 'main.dart';
import 'Page5.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              AppBar(
                  title: Text('OOF')
              ),
              Text('You have gone bankrupt... maybe you should think twice before investing more(Current Balance: 0)'),

              RaisedButton(
                child: Text('Invest in more stocks with money you dont have',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),

                  );
                },
              ),
            ]));
  }
}