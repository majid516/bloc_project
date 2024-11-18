import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/core/screen_size/screen_size.dart';
import 'package:bloc_project/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class CunsultFeeBar extends StatelessWidget {
  final String fee;
  const CunsultFeeBar({super.key, required this.fee});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: ScreenSize.width,
        height: 60,
        decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: appThemeColor.withOpacity(0.2),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("In cusutation appioment", style: normalTextProfile1,),
              Text("₹ $fee", style: normalTextProfile1,),
            ],
          ),
        ),
      ),
    );
  }
}