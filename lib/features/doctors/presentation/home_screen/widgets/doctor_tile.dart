import 'dart:developer';

import 'package:bloc_project/core/colors/colors.dart';
import 'package:bloc_project/core/screen_size/screen_size.dart';
import 'package:bloc_project/core/strings/strings.dart';
import 'package:bloc_project/core/styles/text_style.dart';
import 'package:bloc_project/features/doctors/bloc/doctor_bloc/doctors_bloc.dart';
import 'package:bloc_project/features/doctors/cubit/delete_swipe_cubit.dart';
import 'package:bloc_project/features/doctors/presentation/doctor_profile_screen/screen_doctor_profile.dart';
import 'package:bloc_project/features/doctors/presentation/home_screen/widgets/view_doctor_profile_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String experince;
  final String qualification;
  final String fee;
  final String hospital;
  final String profile;
  final String category;
  final String id;
  const DoctorCard(
      {super.key,
      required this.name,
      required this.experince,
      required this.qualification,
      required this.fee,
      required this.hospital,
      required this.profile,
      required this.category,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocProvider(
        
        create: (context) => DeleteSwipeCubit(),
        child: BlocBuilder<DeleteSwipeCubit, bool>(
          builder: (context, slideState) {
                final deleteSwipe = context.read<DeleteSwipeCubit>();

            return GestureDetector(
              onHorizontalDragUpdate: (details) {
                if (details.primaryDelta! < 10) {
                  deleteSwipe.isSwipeOpen();
                } else if (details.primaryDelta! > 10) {
                  deleteSwipe.isSwipeClosed();
                }
              },
              child: ClipRRect(
                borderRadius:BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Container(
                      width: ScreenSize.width,
                      height: ScreenSize.height * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  log(id);
                                  context.read<DoctorsBloc>().add(DeleteDoctor(id));
                                  deleteSwipe.isSwipeClosed();
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  size: 30,
                                )),
                          ],
                        ),
                      ),
                    ),
                   AnimatedPositioned(
                      left: slideState ? -ScreenSize.width * 0.3 : 0,
                      duration: const Duration(milliseconds: 300),
                      child:
                       Container(
                        width: ScreenSize.width,
                        height: ScreenSize.height * 0.2,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          //borderRadius: BorderRadius.circular(18.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage: NetworkImage(
                                        '$imageBaseUrl$profile',
                                      ),
                                    )),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Dr $name",
                                            style: normalTextHome1,
                                          ),
                                          Text(
                                            category,
                                            style: normalTextHome2,
                                          ),
                                          // Text('$experince year overall experince', style: normalTextHome2,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: ScreenSize.width * 0.45,
                                    height: 40,
                                    child: Text(
                                      hospital,
                                      style: normalTextHome2,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: ScreenSize.width * 0.4,
                                    height: 40,
                                    child: ViewProfileButton(
                                      onpressed: () {
                                        Navigator.of(context).push(
                                          CupertinoPageRoute(
                                            builder: (ctx) => DoctorProfileScreen(
                                                name: name,
                                                experince: experince,
                                                qualification: qualification,
                                                fee: fee,
                                                hospital: hospital,
                                                profile: profile,
                                                category: category,
                                                id: id,),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
