import 'dart:async';
import 'dart:developer';

import 'package:bloc_project/features/doctors/bloc/doctor_bloc/doctors_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerCubit extends Cubit<double> {
  late AnimationController animationController;
  TimerCubit()
      : animationController = AnimationController(
            vsync: DummyTickerProvider(), duration: const Duration(seconds: 5)),
        super(0) {
    animationController.addListener(() {
      emit(animationController.value);
    });
  }

  void startTimer() {
    animationController.reverse(from: 1);
  }

  void isAnimationCompleted(BuildContext ctx){
    
      log('before');
      log('after');
 
  }
  
  
  Future<void> disposeAnimation() {
    animationController.dispose();
    return super.close();
  }
}

class DummyTickerProvider extends TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);
}


