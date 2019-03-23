import 'package:tango/bloc_helpers/bloc_event_state_base.dart';
import 'package:tango/blocs/authentication/authentication_event.dart';
import 'package:tango/blocs/authentication/authentication_state.dart';
import 'package:tango/api/api.dart';
import 'package:tango/models/common_response_data.dart';

class AuthenticationBloc extends BlocEventStateBase<AuthenticationEvent, AuthenticationState> {
  @override
  // TODO: implement initialState
  AuthenticationState get initialState => AuthenticationState.notAuthenticated();


  @override
  Stream<AuthenticationState> eventHandler(AuthenticationEvent event, AuthenticationState currentState) async* {

    if(event is LoginEvent) {

      /// 正在登陆
      yield AuthenticationState.authenticating();

      await Future.delayed(Duration(seconds: 3));

      final res = Api.postLogin(event.username, event.password);

      if (res.status == 0) {
        /// 登陆成功
        yield AuthenticationState.authenticated(event.username);
      } else {
        yield AuthenticationState.failed();
      }

    }

  }
}