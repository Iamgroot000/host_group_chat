import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:host_group_chat/feature/presentation/widget/theme/colors.dart';

class ContainerButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? tonTap;
  const ContainerButtonWidget({Key? key, required this.title,required this.tonTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tonTap ,

      child: Container(
          height: 44,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "$title",
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
          )),
    );
  }
}
