// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDM 06',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'PDM 06'),
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
  String _like_state = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlatButton.icon(
              color: this._like_state == 'like' ? Colors.blue : Colors.white,
              icon: Icon(Icons.thumb_up),
              label: Text('like'),
              onPressed: () {
                setState(() => this._like_state = 'like');
              }),
          SizedBox(width: 100),
          FlatButton.icon(
              color: this._like_state == 'dislike' ? Colors.red : Colors.white,
              icon: Icon(Icons.thumb_down),
              label: Text('dislike'),
              onPressed: () {
                setState(() => this._like_state = 'dislike');
              }),
        ]),
      ),
    );
  }
}

