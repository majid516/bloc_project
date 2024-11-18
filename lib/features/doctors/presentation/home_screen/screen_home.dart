import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/core/screen_size/screen_size.dart';
import 'package:bloc_project/core/styles/text_style.dart';
import 'package:bloc_project/features/doctors/bloc/doctor_bloc/doctors_bloc.dart';
import 'package:bloc_project/features/doctors/presentation/home_screen/widgets/add_new_doctor.dart';
import 'package:bloc_project/features/doctors/presentation/home_screen/widgets/doctor_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DoctorsBloc>(context).add(const FechingDoctorDetails());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appThemeColor,
        title: const Text('Bloc App', style: headingTextSyle),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Expanded(
                  child: BlocConsumer<DoctorsBloc, DoctorsState>(
                listener: (context, state) {
                  if (state is SuccessState) {
                    context.read<DoctorsBloc>().add(const FechingDoctorDetails());
                  }
                },
                builder: (context, state) {
                  if (state is LoadingState) {
                    return ListView.builder(
                      itemBuilder: (ctx, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: ScreenSize.width,
                          height: ScreenSize.height * 0.2,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      itemCount: 5,
                    );
                  } else if (state is LoadedState) {
                    return ListView.builder(
                      itemBuilder: (ctx, index) => DoctorCard(
                        id: state.doctors[index].id!,
                        name: state.doctors[index].name,
                        experince: state.doctors[index].experience,
                        qualification: state.doctors[index].qualification,
                        fee: state.doctors[index].fee,
                        category: state.doctors[index].category,
                        hospital: state.doctors[index].hospital,
                        profile: state.doctors[index].profile,
                      ),
                      itemCount: state.doctors.length,
                    );
                  } else if (state is ErrorState) {
                    return Text('error state'+state.errorMsg);
                  }
                  return Text('error');
                },
              )),
            ],
          ),
          AddDoctorButton(),
        ],
      ),
      backgroundColor: backgoundThemeColor,
    );
  }
}
