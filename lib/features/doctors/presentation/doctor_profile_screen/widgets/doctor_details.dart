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
  const DoctorDatails({super.key, required this.name, required this.experince, required this.qualification, required this.fee, required this.hospital, required this.profile, required this.category, required this.id});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      height: ScreenSize.height * 0.18,
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:  NetworkImage('${imageBaseUrl+profile}'),
                  ),
                ],
              )),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
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
          ),
        ],
      ),
    );
  }
}
