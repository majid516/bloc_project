import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/features/doctors/presentation/doctor_profile_screen/widgets/about_doctor.dart';
import 'package:bloc_project/features/doctors/presentation/doctor_profile_screen/widgets/doctor_details.dart';
import 'package:bloc_project/features/doctors/presentation/doctor_profile_screen/widgets/doctor_fee_bar.dart';
import 'package:flutter/material.dart';

class DoctorProfileScreen extends StatelessWidget {
   final String name;
  final String experince;
  final String qualification;
  final String fee;
  final String hospital;
  final String profile;
  final String category;
  final String id;
  const DoctorProfileScreen({super.key, required this.name, required this.experince, required this.qualification, required this.fee, required this.hospital, required this.profile, required this.category, required this.id});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: whiteColor,
            ),
            onPressed: () {},
          ),
          backgroundColor: appThemeColor,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.star_border,
                color: whiteColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.share_outlined,
                color: whiteColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DoctorDatails(name: name, experince: experince, qualification: qualification, fee: fee, hospital: hospital, profile: profile, category: category, id: id),
              Divider(
                thickness: 8,
                color: greyColor,
              ),
              CunsultFeeBar(fee: fee,),
            
              AboutDoctor()
            ],
          ),
        ),
      ),
      
    );
  }
}
