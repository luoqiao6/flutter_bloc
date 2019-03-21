import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}


class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: TangoColors.white253,
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: CustomScrollView(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          slivers: <Widget>[

            SliverPadding(
              padding: EdgeInsets.only(top: 100),
            ),

            SliverList(
              delegate: SliverChildListDelegate([

                Container(
                  //width: 120,
                  height: 120,
                  child: SvgPicture.asset(
                    'res/images/logo_circle_light.svg',
                    //width: 296,
                    //height: 33.6,
                  ),
                ),

              ]),
            ),



            SliverPadding(
              padding: EdgeInsets.only(top: 20),
            ),

            SliverList(
              delegate: SliverChildListDelegate([

                Container(
                  child: SvgPicture.asset(
                    'res/images/tango_text.svg',
                    color: TangoColors.black146,
                    width: 112,
                    //height: 33.6,
                  ),
                ),

              ]),
            ),

            SliverPadding(
              padding: EdgeInsets.only(top: 40),
            ),

            /// Email TextField
            SliverList(
              delegate: SliverChildListDelegate([

                Container(
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(9),
                      ),
                      color: TangoColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: TangoColors.white245,
                          offset: Offset.zero,
                          blurRadius: 2,
                          spreadRadius: 0,
                        )
                      ]

                  ),
                  child: TextField(
                    scrollPadding: EdgeInsets.all(0.0),
                    controller: TextEditingController(),
                    style: TangoTextStyles.SFProDisplayRegular15Black146,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TangoTextStyles.SFProDisplayRegular15Black146,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 18,bottom: 18, left: 24),

//                  border: OutlineInputBorder(
//                      borderRadius: BorderRadius.all(
//                        Radius.circular(9),
//                      ),
//                      borderSide: BorderSide(
//                        color: TangoColors.red179,
//                        width: 1,
//                      )
//                  ),

                    ),



                  ),
                ),

              ]),
            ),


            SliverPadding(
              padding: EdgeInsets.only(top: 20),
            ),

            /// Password TextField
            SliverList(
              delegate: SliverChildListDelegate([

                Container(
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(9),
                      ),
                      color: TangoColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: TangoColors.white245,
                          offset: Offset.zero,
                          blurRadius: 2,
                          spreadRadius: 0,
                        )
                      ]

                  ),
                  child: TextField(
                    scrollPadding: EdgeInsets.all(0.0),
                    controller: TextEditingController(),
                    style: TangoTextStyles.SFProDisplayRegular15Black146,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TangoTextStyles.SFProDisplayRegular15Black146,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 18,bottom: 18, left: 24),

//                  border: OutlineInputBorder(
//                      borderRadius: BorderRadius.all(
//                        Radius.circular(9),
//                      ),
//                      borderSide: BorderSide(
//                        color: TangoColors.red179,
//                        width: 1,
//                      )
//                  ),

                    ),



                  ),
                ),


              ]),
            ),

            SliverPadding(
              padding: EdgeInsets.only(top: 20),
            ),

            /// Password Retry TextField
            SliverList(
              delegate: SliverChildListDelegate([

                Container(
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(9),
                      ),
                      color: TangoColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: TangoColors.white245,
                          offset: Offset.zero,
                          blurRadius: 2,
                          spreadRadius: 0,
                        )
                      ]

                  ),
                  child: TextField(
                    scrollPadding: EdgeInsets.all(0.0),
                    controller: TextEditingController(),
                    style: TangoTextStyles.SFProDisplayRegular15Black146,
                    decoration: InputDecoration(
                      hintText: 'Password Retry',
                      hintStyle: TangoTextStyles.SFProDisplayRegular15Black146,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 18,bottom: 18, left: 24),

//                  border: OutlineInputBorder(
//                      borderRadius: BorderRadius.all(
//                        Radius.circular(9),
//                      ),
//                      borderSide: BorderSide(
//                        color: TangoColors.red179,
//                        width: 1,
//                      )
//                  ),

                    ),



                  ),
                ),

              ]),
            ),

            SliverPadding(
              padding: EdgeInsets.only(top: 20),
            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text('Already have an account?', style: TangoTextStyles.SFProDisplayMedium14Black146,),
                    ),

                    Container(
                      child: Text(' Log In'),
                    ),
                  ],
                ),
                
              ]),
            ),

            SliverPadding(
              padding: EdgeInsets.only(top: 20),
            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 52,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: TangoColors.blue230,
                    borderRadius: BorderRadius.all(
                      Radius.circular(9),
                    ),
                  ),
                  child: Text('Sign In', style: TangoTextStyles.SFProDisplaySemiBold15White,),
                )

              ]),
            ),

            SliverPadding(
              padding: EdgeInsets.only(top: 30),
            ),

            /// OR
            SliverList(
              delegate: SliverChildListDelegate([

                Row(
                  children: <Widget>[

                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: TangoColors.blue201,
//                        border: Border(
//                          bottom: BorderSide(
//                            color:
//                          ),
//                        ),
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Text('OR'),
                    ),

                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: TangoColors.blue201,
                        ),
                      ),
                    ),


                  ],
                ),


              ]),
            ),

            SliverPadding(
              padding: EdgeInsets.only(top: 30),
            ),


            SliverList(
              delegate: SliverChildListDelegate([
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      child: SvgPicture.asset(
                        'res/images/facebook.svg',
                        //color: TangoColors.black146,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      child: SvgPicture.asset(
                        'res/images/twitter.svg',
                        //color: TangoColors.black146,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      child: SvgPicture.asset(
                        'res/images/google.svg',
                        //color: TangoColors.black146,
                      ),
                    ),

                  ],
                ),
              ]),
            ),


            SliverPadding(
              padding: EdgeInsets.only(top: 30),
            ),


          ],
        ),
      ),
    );
  }
}