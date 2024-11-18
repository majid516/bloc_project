import 'dart:convert';

class DoctorModel {
    String? id;
    String name;
    String experience;
    String qualification;
    String fee;
    String profile;
    String category;
    String hospital;

    DoctorModel({
      this.id,
        required this.name,
        required this.experience,
        required this.qualification,
        required this.fee,
        required this.profile,
        required this.category,
        required this.hospital,
    });

    DoctorModel copyWith({
          String? id,

        String? name,
        String? experience,
        String? qualification,
        String? fee,
        String? profile,
        String? category,
        String? hospital,
    }) => 
        DoctorModel(
            id: id?? this.id,
            name: name ?? this.name,
            experience: experience ?? this.experience,
            qualification: qualification ?? this.qualification,
            fee: fee ?? this.fee,
            profile: profile ?? this.profile,
            category: category ?? this.category,
            hospital: hospital ?? this.hospital,
        );

    factory DoctorModel.fromRawJson(String str) => DoctorModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

     factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        id: json["_id"] as String?,
        name: json["name"] as String? ?? "", 
        experience: json["experience"]?.toString() ?? "", 
        qualification: json["qualification"] as String? ?? "",
        fee: json["fee"]?.toString() ?? "0", 
        profile: json["profile"] as String? ?? "",
        category: json["category"] as String? ?? "",
        hospital: json["hospital"] as String? ?? "",
      );

    Map<String, dynamic> toJson() => {
        "_id" : id,
        "name": name,
        "experience": experience,
        "qualification": qualification,
        "fee": fee,
        "profile": profile,
        "category": category,
        "hospital": hospital,
    };
}
