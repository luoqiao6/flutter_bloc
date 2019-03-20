import 'package:tango/bloc_helpers/bloc_event_state_base.dart';

class BoardingState extends BlocState {
  final int currentPageNum;

  BoardingState({this.currentPageNum});

  factory BoardingState.pageChanged(pageNum) {
    return BoardingState(currentPageNum: pageNum);
  }

}