import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteSwipeCubit extends Cubit<bool> {
  DeleteSwipeCubit() : super(false);

  void isSwipeOpen ()=> emit(true);
  void isSwipeClosed ()=> emit(false);
}