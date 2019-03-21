import 'package:flutter/material.dart';
import 'package:tango/pages/light/boarding_page.dart';
import 'package:tango/pages/light/init_page.dart';

void main() => runApp(TangoApp());

class TangoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: InitPage(),//BoardingPage(),
    );
  }
}

