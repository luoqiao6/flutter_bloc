import 'package:tango/bloc_helpers/bloc_event_state_base.dart';
//import 'package:meta/meta.dart';

class AuthenticationState extends BlocState {
  final bool isAuthenticated;
  final bool isAuthenticating;
  final bool hasFailed;

  final String username;

  AuthenticationState({
    this.isAuthenticated : false,
    this.isAuthenticating:false,
    this.hasFailed:false,
    this.username:'',
  });

  factory AuthenticationState.notAuthenticated() {
    return AuthenticationState(isAuthenticated: false);
  }

  factory AuthenticationState.authenticated(String username) {
    return AuthenticationState(isAuthenticated: true, username: username);
  }

  factory AuthenticationState.authenticating() {
    return AuthenticationState(isAuthenticated: false, isAuthenticating: true);
  }

  factory AuthenticationState.failed() {
    return AuthenticationState(isAuthenticated: false, hasFailed: true);
  }

  @override
  String toString() {
    return "isAuthenticated: $isAuthenticated, isAuthenticating: $isAuthenticating, hasFailed: $hasFailed, username: $username .";
  }

}