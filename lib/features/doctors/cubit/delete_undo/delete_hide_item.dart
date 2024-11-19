import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteHideItemCubit extends Cubit<List<String>>{
  DeleteHideItemCubit() : super([]);
 
 void hideCard(String id){
  if(!state.contains(id)){
    emit([...state,id]);
  }
 }
 void showCard(){
    
      state.removeLast();
     log(state.toString());
      emit(state);
    
 }
 
}

class Debounce {
 static Timer? timer;

  void undoDelay(VoidCallback action,[int duration = 5]) {
    if (timer?.isActive ?? false) {
      timer?.cancel();
      log('Timer canceled due to new action or undo');
    }
   
    timer = Timer(Duration(seconds: duration), action);
  }

  void cancelDeleteFromServer() {
    timer?.cancel();
    log('Delete canceled by undo');
  }
}