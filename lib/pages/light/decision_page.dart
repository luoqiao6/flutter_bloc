import 'package:flutter/material.dart';
import 'package:tango/bloc_helpers/bloc_builder.dart';
import 'package:tango/blocs/authentication/authentication_bloc.dart';
import 'package:tango/bloc_helpers/bloc_event_state_builder.dart';
import 'package:tango/blocs/authentication/authentication_state.dart';
import 'package:tango/pages/light/login_page.dart';
import 'package:tango/pages/light/home_page.dart';

class DecisionPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return DecisionPageState();
  }
}

class DecisionPageState extends State<DecisionPage> {
  AuthenticationState oldAuthenticationState;

  @override
  Widget build(BuildContext context) {

    AuthenticationBloc _authenticationBloc = BlocBuilder.of<AuthenticationBloc>(context);

    print('bloc: ' + _authenticationBloc.toString());

    return BlocEventStateBuilder(
      bloc: _authenticationBloc,
      builder: (BuildContext context, AuthenticationState state) {

        if (state != oldAuthenticationState){
          oldAuthenticationState = state;

          if (state.isAuthenticated){
            _redirectToPage(context, HomePage());
          } else if (state.isAuthenticating || state.hasFailed){
            //do nothing
          } else {
            _redirectToPage(context, LoginPage());
          }
        }

        return Container();

      },
    );
  }


  void _redirectToPage(BuildContext context, Widget page){
    WidgetsBinding.instance.addPostFrameCallback((_){

      MaterialPageRoute newRoute = MaterialPageRoute(
          builder: (BuildContext context) => page
      );

      Navigator.of(context).pushAndRemoveUntil(newRoute, ModalRoute.withName('/decision_page'));
    });
  }

}