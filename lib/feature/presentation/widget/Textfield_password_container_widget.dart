
// If we need this container we just need to call TextContainerWidget , tha's why we are creating individually widgets.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:host_group_chat/feature/presentation/widget/theme/style.dart';

class TextFieldPasswordContainerWidget extends StatelessWidget {
   final TextEditingController? controller;
  final IconData? prefixIcon;
   final IconData? suffixIcon;
  final TextInputType? keyboardType;
  const TextFieldPasswordContainerWidget({Key? key,this.suffixIcon,this.keyboardType,  this.controller,this.prefixIcon}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    color: color747480.withOpacity(.2),
    borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
    keyboardType: keyboardType,
    controller: controller,
    decoration:InputDecoration(
    border: InputBorder.none,
    suffixIcon: Icon(prefixIcon),
    prefix: Icon(prefixIcon),
    ), )

    ); }
}
