import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/core/styles/text_style.dart';
import 'package:bloc_project/features/add_doctor/presentation/add_doctor/screen_add_doctor.dart';
import 'package:bloc_project/features/doctors/presentation/doctor_profile_screen/widgets/doctor_details.dart';
import 'package:bloc_project/features/doctors/presentation/doctor_profile_screen/widgets/doctor_fee_bar.dart';
import 'package:bloc_project/infrastructure/models/doctor/doctor_model.dart';
import 'package:flutter/cupertino.dart';
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
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
      backgroundColor: appThemeColor,
      title: const Text('Doctor', style: headingTextSyle),
      iconTheme:const IconThemeData(
        color: whiteColor,
      ),
         shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
        ),
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DoctorDatails(name: name, experince: experince, qualification: qualification, fee: fee, hospital: hospital, profile: profile, category: category, id: id),
         const  Divider(thickness: 15,color: greyColor,),
            CunsultFeeBar(fee: fee,),
         const  Divider(thickness: 15,color: greyColor,),
          
          ],
        ),
      ),
    );
  }
}
