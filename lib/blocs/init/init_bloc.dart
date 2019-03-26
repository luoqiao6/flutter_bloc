import 'package:tango/bloc_helpers/bloc_event_state_base.dart';
import 'package:tango/blocs/init/init_event.dart';
import 'package:tango/blocs/init/init_state.dart';

class InitBloc extends BlocEventStateBase<InitEvent,InitState> {

  @override
  InitState get initialState => InitState.notInitialized();

  @override
  Stream<InitState> eventHandler(InitEvent event, InitState currentState) async* {

    print('InitEventType: ' + event.type.toString());

    if (!currentState.isInitialized){
      yield InitState.notInitialized();
    }

    if (event.type == InitEventType.start ) {
      for (int progress = 1; progress < 11; progress ++ ){
        print('progress: ' + progress.toString());
        await Future.delayed(const Duration(seconds: 1));

        yield InitState.progressing(progress);
      }

      yield InitState.initialized();
    }


    if (event.type == InitEventType.initialized){
      //yield InitState.initialized();
    }

  }
}