import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/features/doctors/cubit/delete_undo/delete_undo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key,  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TimerCubit>(context).startTimer();
    return Center(
      child: BlocBuilder<TimerCubit, double>(
        builder: (context, state) {
          final remainingTime = (state * 5).toStringAsFixed(0);
          return Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                strokeWidth: 2,
                value: state,
                strokeCap: StrokeCap.round,

                color: whiteColor,
              ),
              Text(
                remainingTime,
                style: const TextStyle(fontSize: 18,color: whiteColor),
              ),
            ],
          );
        },
      ),
    );
  }
}
