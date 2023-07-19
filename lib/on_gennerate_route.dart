



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feature/presentation/pages/login_page.dart';

class OnGenerateRoute {

  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
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