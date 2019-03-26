import 'package:flutter/material.dart';
import 'package:tango/blocs/authentication/authentication_bloc.dart';
import 'package:tango/blocs/authentication/authentication_event.dart';
import 'package:tango/bloc_helpers/bloc_builder.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton.icon(
          onPressed: () {
            //bloc.fireEvent(LogoutEvent());
            AuthenticationBloc _authenticationBloc = BlocBuilder.of<AuthenticationBloc>(context);

            _authenticationBloc.fireEvent(LogoutEvent());
          },
          icon: Icon(Icons.exit_to_app),
          label: Text('退出登录'),
        ),
      ),
    );


  }
}

