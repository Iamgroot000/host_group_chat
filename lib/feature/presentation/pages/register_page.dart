

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:host_group_chat/feature/presentation/widget/textfield_container_widget.dart';
import 'package:host_group_chat/feature/presentation/widget/theme/colors.dart';

import '../widget/headerwidget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22,vertical: 32),
          child: Column(
            children: [
            HeaderWidget(title:"Registration"),
              SizedBox(height: 10),
              _profileWidget(),
              SizedBox(height: 10,),
            // TextContainerWidget(
            //   keyboardType: TextInputType.text,
            //   prefixIcon: Icons.person,
            //   controller: usernameController, suffixIcon: null,
            // ),
            //   SizedBox(height: 10,),
            //   TextContainerWidget(
            //     keyboardType: TextInputType.text,
            //     prefixIcon: Icons.person,
            //     controller: emailController, suffixIcon: null,
            //   )


            ],
          ),
        ),
      ),
    );
  }
}

_profileWidget(){
  return Column(
    children: [
      Container(
        height: 62,
          width: 62,
        decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
       // child: Image.asset("",fit: BoxFit.cover,),
      ),
      SizedBox(height: 12,),
      Text("Add profile photo",style: TextStyle(color: greenColor),)
    ],
  );
}
