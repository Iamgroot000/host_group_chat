

import 'package:flutter/material.dart';
import 'package:host_group_chat/feature/presentation/widget/textfield_container_widget.dart';
import 'package:host_group_chat/feature/presentation/widget/headerwidget.dart';
import 'package:host_group_chat/feature/presentation/widget/theme/style.dart';


class LoginPage  extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 32),
          child: Column(
            children: [
              HeaderWidget(title: 'Login',),
              TextContainerWidget(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                prefixIcon: Icons.email,

              )
            ],
          ),
        ),
      ),
    );
  }
}
