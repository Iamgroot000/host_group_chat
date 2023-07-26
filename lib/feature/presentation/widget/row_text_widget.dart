
import 'package:flutter/material.dart';
import 'package:host_group_chat/constant.dart';
import 'package:host_group_chat/feature/presentation/widget/theme/colors.dart';

class RowTextWidget extends StatelessWidget {
  final String? title1;
  final String? titile2;
  final VoidCallback? onTap;
  const RowTextWidget({super.key, required this.title1, required this.titile2, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return _rowTextWidget(context);
  }
}

Widget _rowTextWidget(context){
  return Row(
    //mainAxisAlignment: MainAxisAlignment.center,
    children: [

      Text("Dont't have an account?"),
      InkWell(
        onTap: (){
          print("object");
        Navigator.pushNamed(context, PageConst.registerPage);
      },child:Text(
        "Register", style: TextStyle(color: greenColor),),
      )],
  );
}


