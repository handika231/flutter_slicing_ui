// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DoctorCardModel {
  String image;
  String speciality;
  DoctorCardModel({
    required this.image,
    required this.speciality,
  });

  DoctorCardModel copyWith({
    String? image,
    String? speciality,
  }) {
    return DoctorCardModel(
      image: image ?? this.image,
      speciality: speciality ?? this.speciality,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'speciality': speciality,
    };
  }

  factory DoctorCardModel.fromMap(Map<String, dynamic> map) {
    return DoctorCardModel(
      image: map['image'] as String,
      speciality: map['speciality'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DoctorCardModel.fromJson(String source) =>
      DoctorCardModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DoctorCardModel( image: $image, speciality: $speciality)';

  @override
  bool operator ==(covariant DoctorCardModel other) {
    if (identical(this, other)) return true;

    return other.image == image && other.speciality == speciality;
  }

  @override
  int get hashCode => image.hashCode ^ speciality.hashCode;
}

List<DoctorCardModel> listOfCardModel = [
  DoctorCardModel(image: 'assets/icon-doctor.png', speciality: 'Dokter Umum'),
  DoctorCardModel(image: 'assets/icon-psikiater.png', speciality: 'Psikiater'),
  DoctorCardModel(image: 'assets/icon-obat.png', speciality: 'Dokter Obat'),
  DoctorCardModel(
      image: 'assets/icon_dokter_umum.png', speciality: 'Doctor Umum'),
];

class Doctor {
  String name;
  String image;
  String speciality;
  Doctor({
    required this.name,
    required this.image,
    required this.speciality,
  });

  Doctor copyWith({
    String? name,
    String? image,
    String? speciality,
  }) {
    return Doctor(
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

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      name: map['name'] as String,
      image: map['image'] as String,
      speciality: map['speciality'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Doctor.fromJson(String source) =>
      Doctor.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Doctor(name: $name, image: $image, speciality: $speciality)';

  @override
  bool operator ==(covariant Doctor other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.image == image &&
        other.speciality == speciality;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode ^ speciality.hashCode;
}

List<Doctor> listOfDoctor = [
  Doctor(
      name: 'Alexa Rachel',
      image: 'assets/doctor-1.png',
      speciality: 'Pediatrician'),
  Doctor(
      name: 'Sunny Frank', image: 'assets/doctor-2.png', speciality: 'Dentist'),
  Doctor(
      name: 'Poe Minn', image: 'assets/doctor-3.png', speciality: 'Podiatrist'),
];

class GoodNews {
  String title;
  String image;
  GoodNews({
    required this.title,
    required this.image,
  });

  GoodNews copyWith({
    String? title,
    String? image,
  }) {
    return GoodNews(
      title: title ?? this.title,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
    };
  }

  factory GoodNews.fromMap(Map<String, dynamic> map) {
    return GoodNews(
      title: map['title'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GoodNews.fromJson(String source) =>
      GoodNews.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GoodNews(title: $title, image: $image)';

  @override
  bool operator ==(covariant GoodNews other) {
    if (identical(this, other)) return true;

    return other.title == title && other.image == image;
  }

  @override
  int get hashCode => title.hashCode ^ image.hashCode;
}

List<GoodNews> listOfGoodNews = [
  GoodNews(
      title: 'Is it safe to stay at home\nduring coronavirus?',
      image: 'assets/news-1.png'),
  GoodNews(
      title: 'Consume yellow citrus\nhelps you healthier',
      image: 'assets/news-2.png'),
  GoodNews(
      title: 'Learn how to make \nproper orange juice at home',
      image: 'assets/news-3.png'),
];
