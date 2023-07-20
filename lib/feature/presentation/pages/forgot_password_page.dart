


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:host_group_chat/feature/presentation/widget/headerwidget.dart';

import '../../../constant.dart';
import '../widget/container_button_widget.dart';
import '../widget/textfield_container_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController _emailController=TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22,vertical: 32),
          child: Column(
            children: [
              HeaderWidget(title: "Forgot Password"),
              SizedBox(height: 20),
              Text("Sorry! Just fill in your email and ${AppConst.appName} will send you a link to reset your password"),
              TextContainerWidget(
                controller: _emailController,
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                suffixIcon: null,
              ),
              SizedBox(height: 20,),
              ContainerButtonWidget(title:"Send Password Reset Email", tonTap: () {  },),
            ],

          ),
        ),
      ),
    );
  }
}
