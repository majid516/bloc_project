import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteSnacbarCubit extends Cubit<bool>{
  DeleteSnacbarCubit() : super (false);
  void isHide(){
    emit(false);
   
  }
  bool isVisible(){
    emit(true);
     isHideAfterDelay();
     return state;
  }

  void isHideAfterDelay(){
    Future.delayed(const Duration(seconds: 5),(){
      emit(false);
    });
  }
  bool isDelete(){
    emit(true);
    return state;
  }
}