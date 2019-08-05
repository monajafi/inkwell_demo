import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inkwell demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inkwell Demo"),
      ),
      body: Center(child: MyButton(),),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         Scaffold.of(context).showSnackBar(SnackBar(content: Text("Tap"),));
      },
      child: Container(
        padding: EdgeInsets.all(12),
        child: Text("Flat Button"),
      ),
    );
  }
}