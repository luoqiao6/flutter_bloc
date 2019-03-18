import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';

class BoardingPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _BoardingPageState();
  }
}

class _BoardingPageState extends State<BoardingPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: TangoColors.white253,
      body: Stack(
        children: <Widget>[

          //底部滑动的部分
          TabBarView(
              controller: _tabController,
              children: [

                ///
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



              ],
          ),

          /// 按钮和页数的提示标志

        ],
      ),
    );
  }
}