import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';
import 'package:tango/utils/gradients.dart';

class TangoSliverAppBar extends StatefulWidget {
  final bool pinned;
  final bool floating;
  final double minHeight;
  final double maxHeight;

  TangoSliverAppBar({
    this.pinned = true,
    this.floating = true,
    this.minHeight = 60.0,
    this.maxHeight = 200.0,
  });


  @override
  State<StatefulWidget> createState() {

    return _TangoSliverAppBarState();
  }
}

class _TangoSliverAppBarState extends State<TangoSliverAppBar> {

  @override
  Widget build(BuildContext context) {

    return SliverPersistentHeader(
      pinned: widget.pinned,
      floating: widget.floating,

      delegate: _SliverAppBarDelegate(
        minHeight: widget.minHeight,
        maxHeight: widget.maxHeight,

        child: Container(
          padding: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
            gradient: TangoGradients.red179Blue230TopToBottom
          ),
          child: Row(
            children: <Widget>[

            Padding(
              padding: EdgeInsets.only(left: 24,),
              child: Container(
                //height: widget.maxHeight,
                //alignment: Alignment.center,
//                decoration: BoxDecoration(
//                  border: Border.all(
//                    width: 1,
//                    color: TangoColors.red179,
//                  )
//                ),
                child: Text(
                  String.fromCharCode(Icons.menu.codePoint),
                  style: TextStyle(
                    fontFamily: Icons.menu.fontFamily,
                    fontSize: 24,
                    color: TangoColors.white,
                  ),
                  //textAlign: TextAlign.center,
                ),
              ),
            ),

            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text('Message', style: TangoTextStyles.SFProDisplaySemiBold15White,),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: 24,),
              child: Container(
                child: Text(
                  String.fromCharCode(Icons.search.codePoint),
                  style: TextStyle(
                    fontFamily: Icons.search.fontFamily,
                    fontSize: 24,
                    color: TangoColors.white,
                  ),
                ),
              ),
            ),

            ],
          ),


        ),


      ),

    );
  }
}


class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent)
  {
    return new SizedBox.expand(child: child);
  }
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
