
// If we need this container we just need to call TextContainerWidget , tha's why we are creating individually widgets.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:host_group_chat/feature/presentation/widget/theme/colors.dart';

class TextFieldPasswordContainerWidget extends StatefulWidget {
   final TextEditingController? controller;
  final IconData? prefixIcon;

  final TextInputType? keyboardType;
  const TextFieldPasswordContainerWidget({Key? key,this.keyboardType,  this.controller,this.prefixIcon}): super(key: key);

  @override
  State<TextFieldPasswordContainerWidget> createState() => _TextFieldPasswordContainerWidgetState();
}

class _TextFieldPasswordContainerWidgetState extends State<TextFieldPasswordContainerWidget> {
  bool isobscureText=true;
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
      obscureText: isobscureText,
    keyboardType: widget.keyboardType,
    controller: widget.controller,
    decoration:InputDecoration(
    border: InputBorder.none,
    suffixIcon: InkWell(onTap: () {
      setState(() {
        isobscureText = !isobscureText;
      });
    },
        child: Icon(isobscureText==true ? Icons.panorama_fish_eye : Icons.remove_red_eye)),
    prefix: Icon(widget.prefixIcon),
    ), )

    ); }
}
