import 'package:flutter/material.dart';
import 'package:tango/pages/light/boarding_page.dart';
import 'package:tango/pages/light/init_page.dart';
import 'package:tango/pages/light/decision_page.dart';
import 'package:tango/pages/light/register_page.dart';
import 'package:tango/pages/light/login_page.dart';
import 'package:tango/pages/light/home_page.dart';

import 'package:tango/bloc_helpers/bloc_builder.dart';
import 'package:tango/blocs/authentication/authentication_bloc.dart';


void main() => runApp(TangoApp());

class TangoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: AuthenticationBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: BoardingPage(),//LoginPage(),//ChatListPage(),////BoardingPage(),//InitPage(),//,
        routes: {
          '/init_page': (BuildContext context) => InitPage(),
          '/decision_page': (BuildContext context) => DecisionPage(),
          '/register_page': (BuildContext context) => RegisterPage(),
          '/login_page': (BuildContext context) => LoginPage(),
          '/home_page': (BuildContext context) => HomePage(),

        },
      ),
    );
  }
}

