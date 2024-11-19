import 'dart:developer';

import 'package:bloc_project/infrastructure/models/doctor/doctor_model.dart';
import 'package:dio/dio.dart';
class AddUpdateDoctorRepository {
  
  Future<void> addNewDoctor(DoctorModel doctor) async {
    const url = 'http://localhost:4000/doctor/addDoctor';

    if (  doctor.profile.isEmpty) {
      log("Error: Profile image path is invalid");
      throw Exception('Profile image is missing');
    }

    FormData formData = FormData.fromMap({
      "category": doctor.category,
      "experience": doctor.experience,
      "fee": doctor.fee,
      "name": doctor.name,
      "qualification": doctor.qualification,
      "hospital": doctor.hospital,
      "profile": await MultipartFile.fromFile(doctor.profile),
    });

    try {
      final response = await Dio().post(url, data: formData);

      if (response.statusCode == 200) {
        log('Post request succeeded: ${response.data}');
      } else {
        log("Unexpected status code: ${response.statusCode}");
      }
    } catch (e) {
      log("Error while submitting doctor data: $e");
      throw Exception('Post request threw an exception');
    }
  }

 Future<void> updateDoctor(DoctorModel doctor) async {
  final url = 'http://localhost:4000/doctor/updateDoctor/${doctor.id}';

  if (doctor.id == null || doctor.id!.isEmpty) {
    log('Error while updating: Doctor ID is missing');
    throw Exception('Doctor ID is not found');
  }

  Map<String, dynamic> dataMap = {
    "category": doctor.category,
    "experience": doctor.experience,
    "fee": doctor.fee,
    "name": doctor.name,
    "qualification": doctor.qualification,
    "hospital": doctor.hospital,
  };

  if (doctor.profile.isNotEmpty) {
    dataMap["profile"] = await MultipartFile.fromFile(doctor.profile);
  }

  FormData formData = FormData.fromMap(dataMap);

  try {
    final response = await Dio().put(url, data: formData);

    if (response.statusCode == 200) {
      log('Update request succeeded: ${response.data}');
    } else {
      log("Unexpected status code: ${response.statusCode}");
    }
  } catch (e) {
    log("Error while updating doctor data: $e");
    throw Exception('Update request threw an exception');
  }
}

}
