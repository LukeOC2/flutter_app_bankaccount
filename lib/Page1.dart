import 'package:flutter/material.dart';
import 'main.dart';
import 'Page 4.dart';
import 'Page5.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(
              title: Text('TSLA')
          ),
          Text('You have lost money(Current Balance: 649)'),

          RaisedButton(
            child: Text('Hold the stock(s)',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                )),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page5()),
              );
            },
          ),
          RaisedButton(
            child: Text('Invest more',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                )),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page4()),
              );
            },
          ),
        ],
      ),
    );
  }
}
