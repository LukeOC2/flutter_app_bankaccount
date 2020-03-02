import 'package:flutter/material.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';
import 'Page 4.dart';
import 'Page5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        AppBar(title: Text("My Bank Account")),
        Text('Current Balance: 1000',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            )),
        RaisedButton(
          child: Text('Invest in TSLA.',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              )),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page1()),
            );
          },
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
            child: Text("Invest APPL.",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                )),
          ),
        ),
        Row(children: <Widget>[
          Expanded(
              child: RaisedButton(
                child: Text('Invest in AMZN.',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page3()),
                  );
                },

              )),
        ]),

      ]),
    );
  }
}
