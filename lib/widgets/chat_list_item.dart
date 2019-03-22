import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';


class ChatListItem extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _ChatListItem();
  }
}

class _ChatListItem extends State<ChatListItem> {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 61,
      child: Row(
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
    );



  }
}