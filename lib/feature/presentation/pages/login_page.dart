

import 'package:flutter/material.dart';
import 'package:host_group_chat/constant.dart';
import 'package:host_group_chat/feature/presentation/pages/register_page.dart';
import 'package:host_group_chat/feature/presentation/pages/register_page.dart';
import 'package:host_group_chat/feature/presentation/pages/register_page.dart';
import 'package:host_group_chat/feature/presentation/widget/textfield_container_widget.dart';
import 'package:host_group_chat/feature/presentation/widget/headerwidget.dart';
import 'package:host_group_chat/feature/presentation/widget/theme/colors.dart';

import '../widget/Textfield_password_container_widget.dart';
import '../widget/container_button_widget.dart';
import '../widget/row_text_widget.dart';
import 'forgot_password_page.dart';


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
                suffixIcon: null,

              ),
              SizedBox(height:10),
              TextFieldPasswordContainerWidget(

              keyboardType: TextInputType.emailAddress,
              controller: _passwordController,
              prefixIcon: Icons.lock,
              ),
              SizedBox(height:10),
              _forgotPasswordWidget(context),
              SizedBox(height:10),

              ContainerButtonWidget(title:"Login",tonTap:(){
                print('hello login button');
              },),

              SizedBox(height:10),

              RowTextWidget(
                title1: "Don't have an account?",
                titile2: "Register",
                onTap: () {
                  Navigator.pushNamed(context, PageConst.registerPage);
                  print("object");
                },
              ),
              SizedBox(height: 10,),
              _rowGoogleWidget(),





              ],
          ),
        ),
      ),
    );
  }
}




    Widget _forgotPasswordWidget( BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
      Text(""),
      InkWell(
      onTap: (){
      Navigator.pushNamed(context, PageConst.forgotPasswordPage);
      },
      child:Text("Forgot password?",style: TextStyle(
        color:greenColor,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      ),
      )
    ]
  );

    }
    Widget _rowTextWidget(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

    Text("Dont't have an account?"),
    InkWell(onTap: (){
      //naviagte to register page
    },child:Text("Register", style: TextStyle(color: greenColor),),
    )],
  );
    }

    Widget _rowGoogleWidget(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
  onTap: (){
    //google login page
  },
  child:
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50)
        ),
        child:
        Icon(Icons.facebook,color: Colors.white,),
      )

      )],
  );
    }




