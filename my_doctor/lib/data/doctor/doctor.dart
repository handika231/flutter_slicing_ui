// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DoctorCardModel {
  String name;
  String image;
  String speciality;
  DoctorCardModel({
    required this.name,
    required this.image,
    required this.speciality,
  });

  DoctorCardModel copyWith({
    String? name,
    String? image,
    String? speciality,
  }) {
    return DoctorCardModel(
      name: name ?? this.name,
      image: image ?? this.image,
      speciality: speciality ?? this.speciality,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
      'speciality': speciality,
    };
  }

  factory DoctorCardModel.fromMap(Map<String, dynamic> map) {
    return DoctorCardModel(
      name: map['name'] as String,
      image: map['image'] as String,
      speciality: map['speciality'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DoctorCardModel.fromJson(String source) =>
      DoctorCardModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DoctorCardModel(name: $name, image: $image, speciality: $speciality)';

  @override
  bool operator ==(covariant DoctorCardModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.image == image &&
        other.speciality == speciality;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode ^ speciality.hashCode;
}
