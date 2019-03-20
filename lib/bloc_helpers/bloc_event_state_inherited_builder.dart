import 'package:tango/bloc_helpers/bloc_event_state_base.dart';
import 'package:flutter/material.dart';

Type _typeOf<T>() => T;

typedef Widget AsyncBlocStateBuilder<S extends BlocState>(BuildContext context, S state);

abstract class BlocBase {
  void dispose();
}

class BlocEventStateInheritedBuilder<T extends BlocEventStateBase, E extends BlocEvent, S extends BlocState> extends StatefulWidget {
  final AsyncBlocStateBuilder<S> builder;
  final T bloc;

  BlocEventStateInheritedBuilder({
    Key key,
    @required this.bloc,
    @required this.builder,
  }): super(key: key);

  @override
  _BlocEventStateInheritedBuilderState<T, E, S> createState() => _BlocEventStateInheritedBuilderState<T, E, S>();

  static T of<T extends BlocBase>(BuildContext context){
    final type = _typeOf<_BlocProviderInherited<T>>();
    _BlocProviderInherited provider = context.ancestorInheritedElementForWidgetOfExactType(type)?.widget;
    return provider?.bloc;
  }

}

class _BlocEventStateInheritedBuilderState<T extends BlocEventStateBase, E extends BlocEvent, S extends BlocState> extends State<BlocEventStateInheritedBuilder<T, E, S>> {
  @override
  void dispose(){
    widget.bloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BlocProviderInherited<T>(
      bloc: widget.bloc,
      child: StreamBuilder<S>(
        stream: widget.bloc.state,
        initialData: widget.bloc.initialState,
        builder: (BuildContext context, AsyncSnapshot<S> snapshot) {
          return widget.builder(context, snapshot.data);
        },
      ),
    );


//    StreamBuilder<BlocState>(
//      stream: bloc.state,
//      initialData: bloc.initialState,
//      builder: (BuildContext context, AsyncSnapshot<BlocState> snapshot) {
//        return builder(context, snapshot.data);
//      },
//    );
//
//    return new _BlocProviderInherited<T>(
//      bloc: widget.bloc,
//      child: widget.child,
//    );

  }
}

class _BlocProviderInherited<T> extends InheritedWidget {
  _BlocProviderInherited({
    Key key,
    @required this.bloc,
    @required Widget child,
  }) : super(key: key, child: child);

  final T bloc;

  @override
  bool updateShouldNotify(_BlocProviderInherited oldWidget) => false;
}
