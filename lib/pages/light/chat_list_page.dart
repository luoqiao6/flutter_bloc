import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';
import 'package:tango/widgets/tango_sliver_app_bar.dart';
import 'package:tango/widgets/chat_list_item.dart';
import 'package:tango/widgets/tango_bottom_bar.dart';

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
                padding: EdgeInsets.only(top: 20),
              ),

              SliverPadding(
                padding: EdgeInsets.only(left: 16, right: 16),
                sliver: SliverFixedExtentList(
                  itemExtent: 71,
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 10, ),
                        child: ChatListItem(),
                      );
                    },
                    childCount: 20,
                  ),
                ),
              ),


            ],
          ),

          TangoBottomBar(),


        ],
      ),
    );
  }
}

