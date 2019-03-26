import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tango/utils/colors.dart';
import 'package:tango/utils/textStyles.dart';
import 'package:tango/bloc_helpers/bloc_event_state_builder.dart';
import 'package:tango/blocs/authentication/authentication_bloc.dart';
import 'package:tango/blocs/authentication/authentication_event.dart';
import 'package:tango/blocs/authentication/authentication_state.dart';
import 'package:tango/blocs/authentication/login_form_bloc.dart';

import 'package:tango/bloc_helpers/bloc_builder.dart';

import 'package:tango/pages/light/home_page.dart';

import 'package:tango/bloc_helpers/bloc_event_state_inherited_builder.dart';

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}


class _LoginPageState extends State<LoginPage> {

  AuthenticationBloc _authenticationBloc = AuthenticationBloc();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  LoginFormBloc _formBloc = LoginFormBloc();


  @override
  Widget build(BuildContext context) {

    Widget mainContent = Padding(
      padding: EdgeInsets.only(left: 24, right: 24),
      child: CustomScrollView(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        slivers: <Widget>[

          SliverList(
            delegate: SliverChildListDelegate([

              Padding(
                padding: EdgeInsets.only(top: 80),
              ),

              Container(
                //width: 120,
                height: 120,
                child: SvgPicture.asset(
                  'res/images/logo_circle_light.svg',
                  //width: 296,
                  //height: 33.6,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
              ),

              /// Logo
              Container(
                child: SvgPicture.asset(
                  'res/images/tango_text.svg',
                  color: TangoColors.black146,
                  width: 112,
                  //height: 33.6,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 40),
              ),

              /// Email
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
                child: StreamBuilder<String>(
                  stream: _formBloc.email,
                  builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                    return TextField(
                      scrollPadding: EdgeInsets.all(0.0),
                      controller: _emailController,
                      onChanged: _formBloc.emailSinkAdd,
                      style: TangoTextStyles.SFProDisplayRegular15Black146,
                      decoration: InputDecoration(
                        errorText: snapshot.error,  /// 错误提示 ///
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



                    );



                  }

                ),


              ),

              Padding(
                padding: EdgeInsets.only(top: 36),
              ),


              /// Password
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
                child: StreamBuilder(
                  stream: _formBloc.password,
                  builder: (BuildContext context, AsyncSnapshot<String> snapshot) {

                    return TextField(
                      scrollPadding: EdgeInsets.all(0.0),
                      controller: _passwordController,
                      onChanged: _formBloc.passwordSinkAdd,
                      style: TangoTextStyles.SFProDisplayRegular15Black146,
                      decoration: InputDecoration(
                        errorText: snapshot.error,  /// 错误提示 ///
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


                    );


                  }

                ),

              ),


              Padding(
                padding: EdgeInsets.only(top: 36),
              ),

              /// Sign In botton

              GestureDetector(
                onTap: () {
                  print('onTap');

                  bool checkedTag = true;
                  if (_emailController.text == '') {
                    /// 触发表单显示提示信息

                    _formBloc.passwordSinkAdd('');
                    checkedTag = false;
                  }

                  if (_passwordController.text == '') {
                    /// 触发表单显示提示信息
                    _formBloc.emailSinkAdd('');
                    checkedTag = false;
                  }

                  /// 不为空，提交表单
                  if (checkedTag) {
                      _authenticationBloc.fireEvent(
                        LoginEvent(
                          username: _emailController.text,
                          password: _passwordController.text
                        )
                      );
                  }


                },

                child: Container(
                  height: 52,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: TangoColors.blue230,
                    borderRadius: BorderRadius.all(
                      Radius.circular(9),
                    ),
                  ),
                  child: Text('Sign In', style: TangoTextStyles.SFProDisplaySemiBold15White,),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30),
              ),

              /// OR
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

              Padding(
                padding: EdgeInsets.only(top: 30),
              ),

              /// third login
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


              Padding(
                padding: EdgeInsets.only(left: 30),
              ),



            ]),
          ),


        ],
      ),
    );


    return Scaffold(
      backgroundColor: TangoColors.white253,
      body: Stack(
        children: <Widget>[
          mainContent,

          BlocEventStateBuilder<AuthenticationEvent, AuthenticationState>(
            bloc: _authenticationBloc,
            builder: (BuildContext context, AuthenticationState state){
              print('In Build State: ' + state.toString());

              if (state.isAuthenticating) {

                return Container(
                  padding: EdgeInsets.only(top: 24),
                  child: LinearProgressIndicator(
                    //value: state.progress.toDouble() / 10,
                    valueColor: AlwaysStoppedAnimation(TangoColors.blue230),
                    backgroundColor: TangoColors.white245,
                  ),
                );

              } else if(state.isAuthenticated) {

                print('state: isAuthenticated=true;');

                /// 跳转到首页，这里应该触发跳转到首页的事件
                WidgetsBinding.instance.addPostFrameCallback((_){
                  //Navigator.of(context).pushNamed('/chat_list_page');
                  Navigator.of(context).pushReplacementNamed('/home_page');
                });

                return Container();

              } else if(state.hasFailed) {
                return Center(
                  child: Container(

                    child: Text('登录失败'),
                  ),
                );

              } else {
                  return Container();
              }

            },
          ),


        ],
      ),
    );
  }
}