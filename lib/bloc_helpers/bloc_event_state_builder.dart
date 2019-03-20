import 'package:tango/bloc_helpers/bloc_event_state_base.dart';
import 'package:flutter/material.dart';

typedef Widget AsyncBlocStateBuilder<BlocState>(BuildContext context, BlocState state);

class BlocEventStateBuilder<BlocEvent, BlocState> extends StatelessWidget {
  BlocEventStateBuilder({Key key, this.bloc, this.builder}) : super(key: key);

  final BlocEventStateBase<BlocEvent, BlocState> bloc;
  final AsyncBlocStateBuilder<BlocState> builder;

  Widget build(BuildContext context) {
    return StreamBuilder<BlocState>(
      stream: bloc.state,
      initialData: bloc.initialState,
      builder: (BuildContext context, AsyncSnapshot<BlocState> snapshot) {
        return builder(context, snapshot.data);
      },
    );
  }

}