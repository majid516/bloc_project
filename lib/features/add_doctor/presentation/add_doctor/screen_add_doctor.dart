import 'dart:developer';
import 'dart:io';

import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/core/strings/strings.dart';
import 'package:bloc_project/core/styles/text_style.dart';
import 'package:bloc_project/features/add_doctor/bloc/add_doctor_bloc/add_doctor_bloc.dart';
import 'package:bloc_project/features/add_doctor/presentation/widgets/text_field.dart';
import 'package:bloc_project/features/doctors/bloc/doctor_bloc/doctors_bloc.dart';
import 'package:bloc_project/infrastructure/models/doctor/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenAddDoctor extends StatelessWidget {
  final bool isAdd;
  DoctorModel? doctor;
  ScreenAddDoctor({
    super.key,
    required this.isAdd,
    this.doctor,
  });
  final nameController = TextEditingController();
  final qualificationController = TextEditingController();
  final experienceController = TextEditingController();
  final feeController = TextEditingController();
  final clinicController = TextEditingController();
  final categoryController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? profile;

  @override
  Widget build(BuildContext context) {
    log(isAdd.toString());
    if (!isAdd) {
      context.read<AddDoctorBloc>().add(SetImage(doctor!.profile));
      log(doctor!.profile);
    }
    if (!isAdd) {
      nameController.text = doctor?.name ?? '';
      qualificationController.text = doctor?.qualification ?? '';
      experienceController.text = doctor?.experience ?? '';
      feeController.text = doctor?.fee ?? '';
      clinicController.text = doctor?.hospital ?? '';
      categoryController.text = doctor?.category ?? '';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appThemeColor,
        title: const Text(
          'Add Doctor',
          style: headingTextSyle,
        ),
           shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              children: [
                InkWell(
                  child: Stack(
                    children: [
                      BlocBuilder<AddDoctorBloc, AddDoctorState>(
  builder: (context, state) {
    if (state is InitialState) {
      return const CircleAvatar(
        radius: 70,
        backgroundImage: NetworkImage(
            'https://cdn2.iconfinder.com/data/icons/user-people-4/48/5-512.png'),
      );
    } else if (state is AddLoadingState) {
      return const CircularProgressIndicator();
    } else if (state is AddLoadedState) {
      profile = state.profile;
      if (File(profile!).existsSync()) {
        return CircleAvatar(
          radius: 70,
          foregroundImage: FileImage(File(profile!)),
        );
      } else {
        log("Local file not found, using default image.");
        return CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage(
             '$imageBaseUrl${doctor?.profile}'),
        );
      }
    } else if (state is AddErrorState) {
      log('Error while picking image');
      return const CircleAvatar(
        radius: 70,
        backgroundImage: NetworkImage(
            'https://cdn2.iconfinder.com/data/icons/user-people-4/48/5-512.png'),
      );
    } else {
      if (doctor != null ) {
      
        log('Using network image: $imageBaseUrl${doctor!.profile}');
        return CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/user-people-4/48/5-512.png"),
        );
      } else {
        log('Using default image for edit mode');
        return const CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage(
              'https://cdn2.iconfinder.com/data/icons/user-people-4/48/5-512.png'),
        );
      }
    }
  },
),

                    
                      const Positioned(
                        bottom: 10,
                        right: 10,
                        child: Icon(Icons.add_a_photo),
                      )
                    ],
                  ),
                  onTap: () {
                    BlocProvider.of<AddDoctorBloc>(context)
                        .add(const PickImageFromGallery());
                  },
                ),
                const SizedBox(
                  height: 1,
                ),
                buildTextField(
                    nameController, 'doctor name', 'please enter doctor name'),
                buildTextField(qualificationController, 'qualification',
                    'please enter qualification'),
                buildTextField(experienceController, 'experience',
                    'please enter experience'),
                buildTextField(feeController, 'fee', 'please enter doctor fee',
                    isFee: true),
                buildTextField(
                    clinicController, 'clinic', 'please enter doctor clinic'),
                buildTextField(
                    categoryController, 'category', 'please enter category'),

                const SizedBox(
                  height: 15,
                ),

                ElevatedButton(
                  onPressed: () {
                    if (isAdd) {
                      if (formKey.currentState!.validate()) {
                        final doctor = DoctorModel(
                          name: nameController.text,
                          experience: experienceController.text,
                          qualification: qualificationController.text,
                          fee: feeController.text,
                          profile: profile!,
                          category: categoryController.text,
                          hospital: clinicController.text,
                        );
                        BlocProvider.of<DoctorsBloc>(context)
                            .add(SubmitDoctor(doctor));
                            BlocProvider.of<AddDoctorBloc>(context)
                            .add(const ImageDispose());
                        Navigator.pop(context);
                      }
                    } else {
                      print('button worked / update');
                      if (formKey.currentState!.validate()) {
                        final doctorData = DoctorModel(
                          id: doctor?.id ?? '',
                          name: nameController.text,
                          experience: experienceController.text,
                          qualification: qualificationController.text,
                          fee: feeController.text,
                          profile: profile!,
                          category: categoryController.text,
                          hospital: clinicController.text,
                        );
                        BlocProvider.of<DoctorsBloc>(context)
                            .add(UpdateDoctor(doctorData));
                             BlocProvider.of<AddDoctorBloc>(context)
                            .add(const ImageDispose());
                        Navigator.pop(context);
                      }
                    }
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: appThemeColor),
                  child: const Text(
                    'submit doctor',
                    style: TextStyle(color: whiteColor),
                  ),
                ),
                // )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
    );
  }
}
