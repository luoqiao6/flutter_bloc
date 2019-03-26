import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';
import 'package:tango/utils/gradients.dart';
import 'package:tango/blocs/init/init_bloc.dart';
import 'package:tango/blocs/init/init_event.dart';
import 'package:tango/blocs/init/init_state.dart';
import 'package:tango/bloc_helpers/bloc_event_state_builder.dart';


class InitPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _InitPage();
  }
}

class _InitPage extends State<InitPage> {
  InitBloc _initBloc = InitBloc();

  @override
  void initState() {
    _initBloc.fireEvent(InitEvent(type: InitEventType.start));

    super.initState();
  }

  @override
  void dispose() {
    _initBloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        //alignment: Alignment.center,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: TangoGradients.red179Blue230TopToBottom,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

//              Padding(
//                padding: EdgeInsets.only(top: 100),
//              ),

              Container(
                width: 147,
                height: 130,
//                decoration: BoxDecoration(
//                  border: Border.all(
//                    width: 1,
//                    color: TangoColors.white,
//                  )
//                ),
                child: SvgPicture.asset(
                  'res/images/logo_line.svg',
                  color: TangoColors.white,
                  //width: 147,
                  //height: 33.6,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 16),
              ),

              Container(
                child: SvgPicture.asset(
                  'res/images/tango_text.svg',
                  color: TangoColors.white,
                  width: 150,
                  //height: 33.6,
                ),
              ),


            ],
          ),

          BlocEventStateBuilder<InitEvent, InitState>(
            bloc: _initBloc,
            builder: (BuildContext context, InitState state){
              print('InitState In Bulider: ' + state.toString());

              if (state.isInitialized) {
                WidgetsBinding.instance.addPostFrameCallback((_){
                  Navigator.of(context).pushReplacementNamed('/decision_page');
                });
                return Container();

              } else {

                return Container(
                  padding: EdgeInsets.only(top: 24),
                  child: LinearProgressIndicator(
                    value: state.progress.toDouble() / 10,
                    valueColor: AlwaysStoppedAnimation(TangoColors.blue230),
                    backgroundColor: TangoColors.white245,
                  ),
                );

              }

            },
          ),

        ],
      ),
    );
  }
}