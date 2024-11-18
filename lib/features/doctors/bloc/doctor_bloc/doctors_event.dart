part of 'doctors_bloc.dart';

@freezed
class DoctorsEvent with _$DoctorsEvent {
  const factory DoctorsEvent.fechingDoctorDetails() = FechingDoctorDetails;
  const factory DoctorsEvent.submitDoctor(DoctorModel doctor) = SubmitDoctor;
  const factory DoctorsEvent.deleteDoctor(String doctorId) = DeleteDoctor;
}
