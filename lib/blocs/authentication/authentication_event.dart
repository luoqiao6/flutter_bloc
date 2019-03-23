import 'package:tango/bloc_helpers/bloc_event_state_base.dart';

class AuthenticationEvent extends BlocEvent{
  final String username;

  AuthenticationEvent({this.username});
}

class LoginEvent extends AuthenticationEvent {
  final String username;
  final String password;

  LoginEvent({this.username, this.password});
}

class LogoutEvent extends AuthenticationEvent {
  final String username;

  LogoutEvent({this.username});
}
