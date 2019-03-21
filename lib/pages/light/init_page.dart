import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';
import 'package:tango/utils/gradients.dart';


class InitPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _InitPage();
  }
}

class _InitPage extends State<InitPage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        //alignment: Alignment.center,
        alignment: Alignment.center,
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

        ],
      ),
    );
  }
}