import 'package:tango/bloc_helpers/bloc_event_state_base.dart';
import 'package:tango/blocs/boarding/boarding_event.dart';
import 'package:tango/blocs/boarding/boarding_state.dart';

class BoardingBloc extends BlocEventStateBase<BoardingEvent, BoardingState> {
  @override
  BoardingState get initialState => BoardingState.pageChanged(0);

  @override
  Stream<BoardingState> eventHandler(BoardingEvent event, BoardingState currentState) async* {

    yield BoardingState.pageChanged(event.pageNum);

  }
}
