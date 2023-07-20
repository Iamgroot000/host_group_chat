

// whenever i need (Login) design , i just need to call HeaderWidget

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:host_group_chat/feature/presentation/widget/theme/colors.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({Key? key,required this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Container(
          alignment: Alignment.topLeft,
          child: Text("$title" , style: TextStyle(
              fontSize: 35,
              color: greenColor,
              fontWeight: FontWeight.w700
          ),),
        ),
        SizedBox(height: 10,),
        Divider(thickness: 1,),
        SizedBox(height: 10,),
      ],

    );
  }
}

