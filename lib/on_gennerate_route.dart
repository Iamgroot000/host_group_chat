



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:host_group_chat/feature/presentation/pages/forgot_password_page.dart';
import 'package:host_group_chat/feature/presentation/pages/register_page.dart';

import 'constant.dart';
import 'feature/presentation/pages/login_page.dart';

class OnGenerateRoute {

  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
    case PageConst.forgotPasswordPage :{
    return materialBuilder(widget: ForgotPasswordPage());
    }

      case PageConst.LoginPage :{
        return materialBuilder(widget: LoginPage());
      }

      case PageConst.registerPage :{
        return materialBuilder(widget: RegisterPage());
      }



      case"/" :{
        return materialBuilder(widget: LoginPage());
      }


    default: return materialBuilder(widget: ErrorPage());
    }

    }
  }
  class ErrorPage extends StatelessWidget{
  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("error page"),
      ),
      body: Center(
        child: Text("Error page"),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}){
  return MaterialPageRoute(builder: (_) => widget);
}