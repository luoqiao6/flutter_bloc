import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';

import 'package:tango/bloc_helpers/bloc_event_state_base.dart';
import 'package:tango/bloc_helpers/bloc_event_state_builder.dart';
import 'package:tango/blocs/boarding/boarding_bloc.dart';
import 'package:tango/blocs/boarding/boarding_event.dart';
import 'package:tango/blocs/boarding/boarding_state.dart';


class BoardingPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _BoardingPageState();
  }
}

class _BoardingPageState extends State<BoardingPage> with SingleTickerProviderStateMixin {

  //TabController _tabController;
  BoardingBloc _boardingBloc;

  @override
  void dispose() {
    //_tabController.dispose();
    super.dispose();
  }


  @override
  void initState() {
    super.initState();
    //_tabController = TabController(length: 3, vsync: this);

    _boardingBloc = BoardingBloc();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: TangoColors.white253,
      body: Stack(
        children: <Widget>[

          //底部滑动的部分
          PageView(
              //controller: _tabController,
            onPageChanged: (pageNum) {
              _boardingBloc.fireEvent(BoardingEvent(pageNum: pageNum));

              //print('pageNum: ' + pageNum.toString());
            },
              children: [

                ///第一页
                Center(
                  child: Column(
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(top: 100), /// 此处对不同的屏幕应该有不同的值
                        child: Container(
                          child: SvgPicture.asset(
                            'res/images/boarding_img_one_light.svg',
                            width: 296,
                            //height: 33.6,
                          ),
                        ),
                      ),

                      //
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          child: Text('Send Free Message', style: TangoTextStyles.SFProDisplaySemiBold20Black51,),
                        ),
                      )
                      ,

                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text('Cras dapibus. Vivamus elementum semper nisi. ', style: TangoTextStyles.SFProTextRegular14Black146,),
                              Text('Aenean vulputate eleifend tellus. Aenean leo ', style: TangoTextStyles.SFProTextRegular14Black146,),
                              Text('ligula, porttitor eu consequat vitae.', style: TangoTextStyles.SFProTextRegular14Black146,),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                ///第二页
                Center(
                  child: Column(
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(top: 100), /// 此处对不同的屏幕应该有不同的值
                        child: Container(
                          child: SvgPicture.asset(
                            'res/images/boarding_img_two_light.svg',
                            width: 296,
                            //height: 33.6,
                          ),
                        ),
                      ),

                      //
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          child: Text('Make Group Chat', style: TangoTextStyles.SFProDisplaySemiBold20Black51,),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text('Cras dapibus. Vivamus elementum semper nisi. ', style: TangoTextStyles.SFProTextRegular14Black146,),
                              Text('Aenean vulputate eleifend tellus. Aenean leo ', style: TangoTextStyles.SFProTextRegular14Black146,),
                              Text('ligula, porttitor eu consequat vitae.', style: TangoTextStyles.SFProTextRegular14Black146,),
                            ],
                          ),
                        ),
                      ),

                      
                    ],
                  ),
                ),



                ///第三页
                Center(
                  child: Column(
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(top: 100), /// 此处对不同的屏幕应该有不同的值
                        child: Container(
                          child: SvgPicture.asset(
                            'res/images/boarding_img_three_light.svg',
                            width: 296,
                            //height: 33.6,
                          ),
                        ),
                      ),

                      //
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          child: Text('Make Group Chat', style: TangoTextStyles.SFProDisplaySemiBold20Black51,),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text('Cras dapibus. Vivamus elementum semper nisi. ', style: TangoTextStyles.SFProTextRegular14Black146,),
                              Text('Aenean vulputate eleifend tellus. Aenean leo ', style: TangoTextStyles.SFProTextRegular14Black146,),
                              Text('ligula, porttitor eu consequat vitae.', style: TangoTextStyles.SFProTextRegular14Black146,),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),



              ],
          ),



          /// 页码指示标志

          Padding(
            padding: EdgeInsets.only(top: 50),
            child: BlocEventStateBuilder<BoardingEvent, BoardingState>(
              bloc: _boardingBloc,
              builder: (BuildContext context, BoardingState state) {

                print('currentPageNum: ' + state.currentPageNum.toString());

                Widget inActive = Container(
                  width: 8,
                  height: 5,
                  decoration: BoxDecoration(
                    color: TangoColors.lightBlue255,
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                );

                Widget active = Container(
                  width: 18,
                  height: 5,
                  decoration: BoxDecoration(
                    color: TangoColors.blue230,
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                );


                return Row(
                  children: <Widget>[

                    state.currentPageNum == 0 ? active : inActive,

                    Padding(
                      padding: EdgeInsets.only(right: 10),
                    ),

                  state.currentPageNum == 1 ? active : inActive,

                    Padding(
                      padding: EdgeInsets.only(right: 10),
                    ),

                    state.currentPageNum == 2 ? active : inActive,

                  ],
                );
              },
            )


          ),



        ],
      ),
    );
  }
}