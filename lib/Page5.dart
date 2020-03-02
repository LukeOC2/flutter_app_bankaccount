import 'package:flutter/material.dart';
import 'main.dart';
import 'Page 4.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(
              title: Text('TSLA')
          ),
          Text('Smart of you to hold the stock and see how it fluctuates'),

          RaisedButton(
            child: Text('Browse other options',
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