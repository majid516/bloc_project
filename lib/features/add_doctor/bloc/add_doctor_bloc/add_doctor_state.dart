part of 'add_doctor_bloc.dart';

@freezed
class AddDoctorState with _$AddDoctorState {
  const factory AddDoctorState.addinitialState() = AddInitialState;
  const factory AddDoctorState.addLoadingState() = AddLoadingState;
  const factory AddDoctorState.addLoadedState({required String profile}) = AddLoadedState;
  const factory AddDoctorState.addErrorState({required String errorMsg}) = AddErrorState;
  const factory AddDoctorState.addSuccessState() = AddSuccessState;
}