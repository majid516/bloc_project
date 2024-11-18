part of 'doctors_bloc.dart';

@freezed
class DoctorsState with _$DoctorsState {
  const factory DoctorsState.initialState() = InitialState;
  const factory DoctorsState.loadingState() = LoadingState;
  const factory DoctorsState.loadedState({required List<DoctorModel> doctors}) = LoadedState;
  const factory DoctorsState.errorState({required String errorMsg}) = ErrorState;
  const factory DoctorsState.successState() = SuccessState;
}
