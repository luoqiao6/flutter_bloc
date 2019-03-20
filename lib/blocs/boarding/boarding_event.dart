import 'package:tango/bloc_helpers/bloc_event_state_base.dart';

class BoardingEvent extends BlocEvent {
  final int pageNum;

  BoardingEvent({this.pageNum});
}
