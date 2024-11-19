import 'package:bloc_project/core/screen_size/screen_size.dart';
import 'package:bloc_project/features/add_doctor/bloc/add_doctor_bloc/add_doctor_bloc.dart';
import 'package:bloc_project/features/doctors/bloc/doctor_bloc/doctors_bloc.dart';
import 'package:bloc_project/features/doctors/cubit/delete_swipe/delete_swipe_cubit.dart';
import 'package:bloc_project/features/doctors/cubit/delete_undo/delete_hide_item.dart';
import 'package:bloc_project/features/doctors/cubit/delete_undo/delete_snacbar.dart';
import 'package:bloc_project/features/doctors/cubit/delete_undo/delete_undo.dart';
import 'package:bloc_project/features/doctors/presentation/home_screen/screen_home.dart';
import 'package:bloc_project/infrastructure/repository/add_doctor/add_doctor_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initialize(context);
        final doctorRepository = AddUpdateDoctorRepository(); 
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AddDoctorBloc()),
      BlocProvider(create: (context)=> DoctorsBloc(doctorRepository)),
      BlocProvider(create: (context)=> DeleteSwipeCubit()),
      BlocProvider(create: (context)=> TimerCubit()),
      BlocProvider(create: (context)=> DeleteHideItemCubit()),
      BlocProvider(create: (context)=> DeleteSnacbarCubit()),
      ],
      child: const MaterialApp(
        home: ScreenHome(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
