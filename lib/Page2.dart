import 'package:flutter/material.dart';
import 'main.dart';
import 'Page 4.dart';
import 'Page5.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBar(
              title: Text('APPL')
          ),
          Text('You have gained money(Current Balance: 1428)'),
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
        ],
      ),
    );
  }
}