import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/features/add_doctor/presentation/add_doctor/screen_add_doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddDoctorButton extends StatelessWidget {
  const AddDoctorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 40,
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (ctx) => ScreenAddDoctor(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: appThemeColor),
              child: const Wrap(
                children: [
                  Icon(
                    Icons.add,
                    color: whiteColor,
                  ),
                  Text(
                    'add doctor',
                    style: TextStyle(color: whiteColor),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
