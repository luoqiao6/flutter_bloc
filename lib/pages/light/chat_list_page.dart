import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';
import 'package:tango/widgets/tango_sliver_app_bar.dart';


class ChatListPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ChatListPageState();
  }
}

class _ChatListPageState extends State<ChatListPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: TangoColors.white,
      body: Stack(
        children: <Widget>[

          CustomScrollView(
            slivers: <Widget>[

              TangoSliverAppBar(maxHeight: 80,),

              SliverPadding(
                padding: EdgeInsets.only(left: 16, right: 16),
                sliver: SliverFixedExtentList(
                  itemExtent: 61,
                  delegate: SliverChildListDelegate([

//                    /// 一个列表项
//                    Container(
//                      height: 61,
//                      child: Row(
//                        //crossAxisAlignment: CrossAxisAlignment.center,
//                        //mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//
//                          /// 头像
//                          Container(
//                            width: 55,
//                            height: 55,
//                            child: CircleAvatar(
//                              backgroundColor: TangoColors.red179,
//                              //backgroundImage: AssetImage(assetName),
//                            ),
//                          ),
//
//                          Padding(
//                            padding: EdgeInsets.only(left: 20),
//                          ),
//
//                          /// 头像右边的部分
//                          Expanded(
//                            child: Column(
//                              children: <Widget>[
//                                /// 分割线上面的部分
//
//                                Row(
//                                  children: <Widget>[
//
//                                    Column(
//                                      crossAxisAlignment: CrossAxisAlignment.start,
//                                      children: <Widget>[
//                                        Container(
//                                          child: Text('Eugene Hanson', style: TangoTextStyles.SFProDisplaySemiBold17Black51,),
//                                        ),
//
//                                        Container(
//                                          child: Text('Hey! How are you?', style: TangoTextStyles.SFProDisplayMedium14Black146,),
//                                        ),
//                                      ],
//                                    ),
//
//                                    Expanded(
//                                      child: Container(),
//                                    ),
//
//
//                                    Column(
//                                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                      crossAxisAlignment: CrossAxisAlignment.end,
//                                      children: <Widget>[
//                                        Container(
//                                          width: 16,
//                                          height: 16,
//                                          alignment: Alignment.center,
//                                          decoration: BoxDecoration(
//                                            shape: BoxShape.circle,
//                                            color: TangoColors.blue230,
//                                          ),
//                                          child: Text('3', style: TangoTextStyles.SFProTextRegular9White,),
//                                        ),
//
////                                      Expanded(
////                                        child: Container(),
////                                      ),
//
//                                        Container(
//                                          child: Text('5.30 AM', style: TangoTextStyles.SFProTextRegular10Black183,),
//                                        ),
//                                      ],
//                                    ),
//
//                                  ],
//                                ),
//
//
//                                /// 分割线
//                                Container(
//                                  height: 1,
//                                  //width: 12,
//                                  color: TangoColors.black222,
//                                ),
//
//                              ],
//                            ),
//                          ),
//
//
//
//                        ],
//                      ),
//                    ),




                    /// 第二个列表项
                    Container(
                      height: 61,
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          /// 头像
                          Container(
                            width: 55,
                            height: 55,
                            child: CircleAvatar(
                              backgroundColor: TangoColors.red179,
                              //backgroundImage: AssetImage(assetName),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 20),
                          ),

                          /// 头像右边的部分
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                /// 分割线上面的部分

                                Padding(
                                  padding: EdgeInsets.only(top: 4),
                                ),

                                ///  第一排
                                Row(
                                  children: <Widget>[

                                    Container(
                                      child: Text('Eugene Hanson', style: TangoTextStyles.SFProDisplaySemiBold17Black51,),
                                    ),

                                    Expanded(
                                      child: Container(),
                                    ),

                                    Container(
                                      width: 16,
                                      height: 16,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: TangoColors.blue230,
                                      ),
                                      child: Text('3', style: TangoTextStyles.SFProTextRegular9White,),
                                    ),

                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                ),

                                /// 第二排
                                Row(
                                  children: <Widget>[

                                    Container(
                                      child: Text('Hey! How are you?', style: TangoTextStyles.SFProDisplayMedium14Black146,),
                                    ),

                                    Expanded(
                                      child: Container(),
                                    ),

                                    Container(
                                      child: Text('5.30 AM', style: TangoTextStyles.SFProTextRegular10Black183,),
                                    ),

                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 12),
                                ),

                                /// 分割线
                                Container(
                                  height: 1,
                                  //width: 12,
                                  color: TangoColors.black222,
                                ),


                              ],
                            ),
                          ),



                        ],
                      ),
                    ),






                  ]),
                ),
              ),





            ],
          ),

        ],
      ),
    );
  }
}

