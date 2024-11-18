import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class ViewProfileButton extends StatelessWidget {
  final VoidCallback onpressed;
  const ViewProfileButton({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
          side:const BorderSide(color: appThemeColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: whiteColor),
      child:const Text(
        'view profile',
        style: normalTextHome1,
      ),
    );
  }
}
