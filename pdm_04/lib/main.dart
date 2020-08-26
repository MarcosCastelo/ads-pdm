import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am poor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'I Am Poor'),
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

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Center( child: Text(widget.title )),
            backgroundColor: Color.fromRGBO(38, 116, 102, 0.5)
        ),
        body: Center(
          child: Image(image: AssetImage('lib/images/coal.png'))   
        ),
        backgroundColor: Color.fromRGBO(20, 197, 205, 1)
      );
  }
}
