import 'dart:developer';

import 'package:bloc_project/infrastructure/models/doctor/doctor_model.dart';
import 'package:dio/dio.dart';
class AddDoctorRepository {
  
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
}
