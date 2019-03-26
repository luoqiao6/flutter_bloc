import 'package:tango/bloc_helpers/bloc_event_state_base.dart';
import 'package:meta/meta.dart';

class InitState extends BlocState {
  final bool isInitialized;
  final bool isInitializing;
  final int progress;

  InitState({
    @required this.isInitialized,
    this.isInitializing: false,
    this.progress: 0,
  });



  factory InitState.notInitialized() {
    return InitState(
      isInitialized: false,
    );
  }

  factory InitState.progressing(int progress) {
    return InitState(
      isInitialized: progress == 100,
      isInitializing: true,
      progress: progress,
    );
  }

  factory InitState.initialized() {
    return InitState(
      isInitialized: true,
      progress: 100,
    );
  }

  @override
  String toString() {
    return "InitState: isInitialized: $isInitialized, isInitializing: $isInitializing, progress: $progress";
  }
}