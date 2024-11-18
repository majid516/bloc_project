import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_project/infrastructure/models/doctor/doctor_model.dart';
import 'package:bloc_project/infrastructure/repository/add_doctor/add_doctor_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../infrastructure/repository/doctor/doctor_repository.dart';

part 'doctors_event.dart';
part 'doctors_state.dart';
part 'doctors_bloc.freezed.dart';

class DoctorsBloc extends Bloc<DoctorsEvent, DoctorsState> {
    final AddDoctorRepository doctorRepository;

  DoctorsBloc(this.doctorRepository) : super(const InitialState()) {
    on<FechingDoctorDetails>((event, emit)async {
      emit(const DoctorsState.loadingState());
      try {
         final doctorsData = await DoctorRepository().getAllDoctors();
         emit(DoctorsState.loadedState(doctors: doctorsData));
      } catch (e) {
        log(e.toString());
        emit(DoctorsState.errorState(errorMsg: 'error in bloc $e'));
      }
    });
    
     on<SubmitDoctor>((event,emit)async{
      emit(const DoctorsState.loadingState());
      try {
       
      await doctorRepository.addNewDoctor(event.doctor);
      emit(const DoctorsState.successState());
      } catch (e) {
         log('Error while submitting doctor data: $e');
        emit(const DoctorsState.errorState(errorMsg: 'Failed to submit doctor data.'));
   
      }
    });
   on<DeleteDoctor>((event,emit)async{
      try {
        await DoctorRepository().deleteDoctor(event.doctorId);
             emit(const DoctorsState.successState());
      } catch (e) {
         emit( DoctorsState.errorState(errorMsg: 'exception throwed while deleting $e'));
      }
   });
  }
}
