import 'package:bloc_project/core/screen_size/screen_size.dart';
import 'package:bloc_project/core/strings/strings.dart';
import 'package:bloc_project/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class DoctorDatails extends StatelessWidget {
  final String name;
  final String experince;
  final String qualification;
  final String fee;
  final String hospital;
  final String profile;
  final String category;
  final String id;
  const DoctorDatails(
      {super.key,
      required this.name,
      required this.experince,
      required this.qualification,
      required this.fee,
      required this.hospital,
      required this.profile,
      required this.category,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      height: ScreenSize.height * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage('$imageBaseUrl$profile'),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30),
            child: Row(
              children: [
                Text(
                  'About Doctor',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: ScreenSize.width * 0.13),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr $name",
                      style: normalTextProfile1,
                    ),
                    Text(
                      category,
                      style: normalTextProfile2,
                    ),
                    Text(
                      qualification,
                      style: normalTextProfile2,
                    ),
                    Text(
                      '$experince years experience overall',
                      style: normalTextProfile2,
                    ),
                    Text(
                      hospital,
                      style: normalTextProfile2,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
