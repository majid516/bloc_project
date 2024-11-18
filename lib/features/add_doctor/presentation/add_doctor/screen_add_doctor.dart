import 'dart:developer';
import 'dart:io';

import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/core/styles/text_style.dart';
import 'package:bloc_project/features/add_doctor/bloc/add_doctor_bloc/add_doctor_bloc.dart';
import 'package:bloc_project/features/add_doctor/presentation/widgets/text_field.dart';
import 'package:bloc_project/features/doctors/bloc/doctor_bloc/doctors_bloc.dart';
import 'package:bloc_project/infrastructure/models/doctor/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenAddDoctor extends StatelessWidget {
  ScreenAddDoctor({super.key});
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appThemeColor,
        title: const Text(
          'Add Doctor',
          style: headingTextSyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              InkWell(
                child: Stack(
                  children: [
                    BlocBuilder<AddDoctorBloc, AddDoctorState>(
                      builder: (context, state) {
                        if (state is InitialState) {
                          return CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUFJ4m3HGM8397IWhGhLphaU38QtqrcYQoUg&s'),
                          );
                        } else if (state is AddLoadingState) {
                          return CircularProgressIndicator();
                        } else if (state is AddLoadedState) {
                          profile = state.profile;
                          return CircleAvatar(
                            radius: 70,
                            backgroundImage: FileImage(File(state.profile)),
                          );
                        } else if (state is AddErrorState) {
                          log('error while pick image');
                          return const Icon(Icons.error);
                        }
                        return CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUFJ4m3HGM8397IWhGhLphaU38QtqrcYQoUg&s'),
                        );
                      },
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Icon(Icons.add_a_photo),
                    )
                  ],
                ),
                onTap: () {
                  BlocProvider.of<AddDoctorBloc>(context)
                      .add(PickImageFromGallery());
                },
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
              // BlocListener<AddDoctorBloc, AddDoctorState>(
              //   listener: (context, state) {
              //     context.read<DoctorsBloc>().add(FechingDoctorDetails());
              //   },
              //   child: 
                ElevatedButton(
                    onPressed: () {
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
                            Navigator.pop(context);
                      }
                    },
                    child: Text('submit')),
              // )
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
    );
  }
}
