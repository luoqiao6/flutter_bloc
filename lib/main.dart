import 'package:flutter/material.dart';
import 'package:tango/pages/light/boarding_page.dart';
import 'package:tango/pages/light/init_page.dart';
import 'package:tango/pages/light/register_page.dart';
import 'package:tango/pages/light/login_page.dart';
import 'package:tango/pages/light/chat_list_page.dart';

void main() => runApp(TangoApp());

class TangoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ChatListPage(),//LoginPage(),//BoardingPage(),//InitPage(),//,
      routes: {
        '/init_page': (BuildContext context) => InitPage(),
        '/register_page': (BuildContext context) => RegisterPage(),
        '/login_page': (BuildContext context) => LoginPage(),


      },
    );
  }
}

