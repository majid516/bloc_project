import 'dart:developer';
import 'package:bloc_project/infrastructure/models/doctor/doctor_model.dart';
import 'package:dio/dio.dart';

class DoctorRepository {
    Future<List<DoctorModel>> getAllDoctors() async {
        const url = 'http://localhost:4000/doctor';
        try {
            final response = await Dio().get(url);
            if (response.statusCode == 200 && response.data["success"] == true) {
                final List<dynamic> items = response.data["items"];
                final doctors = items.map((item) => DoctorModel.fromJson(item as Map<String, dynamic>)).toList();
                return doctors;
            } else {
                log('Error while fetching doctor details');
                throw Exception('Failed to load doctor details');
            }
        } catch (e) {
            throw Exception('Exception while fetching doctor details: $e');
        }
    }
    
    Future<void> deleteDoctor(String id)async{
    final url = 'http://localhost:4000/doctor/deleteDoctor/$id';
     try {
       final response =  await Dio().delete(url,data:{id : id});
     if (response.statusCode == 200) {
       log('delete successfully');
     }else{
      log('delete faliled');
     }
     } catch (e) {
      log(e.toString());
       throw Exception('exception throwed whilrtrtrtte deleting $e');
     }
    }
}
   