import 'package:appexpenses/widgets/user_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expenses App'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 100,
                child: Card(
                  color: Colors.blueGrey,
                  child: Text('Chart!!'),
                )),
            UserTransaction()
          ],
        )));
  }
}
