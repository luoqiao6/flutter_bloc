import 'package:tango/bloc_helpers/bloc_builder.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

abstract class BlocEvent extends Object {}
abstract class BlocState extends Object {}

abstract class BlocEventStateBase<BlocEvent, BlocState> implements BlocBase {
  PublishSubject<BlocEvent> _eventController = PublishSubject<BlocEvent>();
  BehaviorSubject<BlocState> _stateController = BehaviorSubject<BlocState>();

  ///
  /// To be invoked to an event
  ///
  Function(BlocEvent) get fireEvent => _eventController.sink.add;

  ///
  /// Current/New state
  ///
  Stream<BlocState> get state => _stateController.stream;

  ///
  /// Last State
  ///
  BlocState get lastState => _stateController.value;

  ///
  /// Processing of the event
  ///
  Stream<BlocState> eventHandler(BlocEvent event, BlocState currentState);

  ///
  /// initialState
  ///
  final BlocState initialState;

  //
  // Constructor
  //
  BlocEventStateBase({@required this.initialState}) {
    //
    // For each received event, we invoke the [eventHandler] and
    // emit any resulting newState
    //
    _eventController.listen((BlocEvent event){
      BlocState currentState = lastState ?? initialState;
      eventHandler(event, currentState).forEach((BlocState newState){
        _stateController.sink.add(newState);
      });
    });
  }

  @override
  void dispose() {
    _eventController.close();
    _stateController.close();
  }

}