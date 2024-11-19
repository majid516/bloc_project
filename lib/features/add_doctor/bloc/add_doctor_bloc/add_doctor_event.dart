part of 'add_doctor_bloc.dart';

@freezed
class AddDoctorEvent with _$AddDoctorEvent {
  const factory AddDoctorEvent.pickImageFromGallery() = PickImageFromGallery;
  const factory AddDoctorEvent.setImage(String imagePath) = SetImage;
  const factory AddDoctorEvent.imageDispose() = ImageDispose;
}