import 'dart:async';
import 'package:rxdart/rxdart.dart';

class LoginFormBloc {
  final BehaviorSubject<String> _emailController = BehaviorSubject();
  final BehaviorSubject<String> _passwordController = BehaviorSubject();

  /// inputs
  Function(String) get emailSinkAdd => _emailController.sink.add;
  Function(String) get passwordSinkAdd => _passwordController.sink.add;

  /// Outputs
  Stream<String> get email => _emailController.stream.transform(
    StreamTransformer.fromHandlers(
      handleData: (email, sink) {
        if (email.isEmpty) {
          sink.addError('Email is required.');
        } else {
          sink.add(email);
        }
      }
    )
  );

  Stream<String> get password => _passwordController.stream.transform(
    StreamTransformer.fromHandlers(
      handleData: (password, sink) {
        if(password.isEmpty) {
          sink.addError('Password is required.');
        } else {
          sink.add(password);
        }
      }
    )
  );


  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }

}