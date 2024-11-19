import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'add_doctor_event.dart';
part 'add_doctor_state.dart';
part 'add_doctor_bloc.freezed.dart';

class AddDoctorBloc extends Bloc<AddDoctorEvent, AddDoctorState> {
  AddDoctorBloc() : super(const AddInitialState()) {
    on<PickImageFromGallery>((event, emit)async {
      try{
        final XFile?  selectedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
        if (selectedImage != null) {
          emit(AddDoctorState.addLoadedState(profile: selectedImage.path));
        }else{
          emit(const AddDoctorState.addErrorState(errorMsg: 'error while picking image'));
        }
      }catch(e){
        log('error while pick image');
       emit(const AddDoctorState.addErrorState(errorMsg: 'exception while picking image'));
      }
    });
    on<SetImage>((event, emit)async {
     try{
      emit(AddDoctorState.addLoadedState(profile: event.imagePath));
     }catch(e){
      emit(AddDoctorState.addErrorState(errorMsg: 'error while pick image'));
     }

    });
     on<ImageDispose>((event, emit)async {
      emit(const AddDoctorState.addinitialState());
    });
  }
}
