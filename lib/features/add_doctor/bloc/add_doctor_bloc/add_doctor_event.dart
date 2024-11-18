part of 'add_doctor_bloc.dart';

@freezed
class AddDoctorEvent with _$AddDoctorEvent {
  const factory AddDoctorEvent.pickImageFromGallery() = PickImageFromGallery;
}