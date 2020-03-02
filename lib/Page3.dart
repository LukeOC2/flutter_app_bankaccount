import 'package:flutter/material.dart';
import 'main.dart';
import 'Page 4.dart';
import 'Page5.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(
              title: Text('AMZN')
          ),
          Text('You have gained money(Current Balance: 1599)'),
          RaisedButton(
            child: Text('Hold stock(s)',
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
    ]));
  }
}