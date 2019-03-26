import 'package:tango/bloc_helpers/bloc_event_state_base.dart';

class InitEvent extends BlocEvent {

  final InitEventType type;

  InitEvent({
    this.type: InitEventType.start,
  }) : assert(type != null);
}

enum InitEventType {
  start,
  initialized,
}