// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Hospital {
  String image;
  String name;
  String address;
  Hospital({
    required this.image,
    required this.name,
    required this.address,
  });

  Hospital copyWith({
    String? image,
    String? name,
    String? address,
  }) {
    return Hospital(
      image: image ?? this.image,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'address': address,
    };
  }

  factory Hospital.fromMap(Map<String, dynamic> map) {
    return Hospital(
      image: map['image'] as String,
      name: map['name'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Hospital.fromJson(String source) =>
      Hospital.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Hospital(image: $image, name: $name, address: $address)';

  @override
  bool operator ==(covariant Hospital other) {
    if (identical(this, other)) return true;

    return other.image == image &&
        other.name == name &&
        other.address == address;
  }

  @override
  int get hashCode => image.hashCode ^ name.hashCode ^ address.hashCode;
}

List<Hospital> listOfHospital = [
  Hospital(
    image: 'assets/hospital-1.png',
    name: 'Rumah Sakit\nCitra Bunga Merdeka',
    address: 'Jln. Surya Sejahtera 20',
  ),
  Hospital(
    image: 'assets/hospital-2.png',
    name: 'Rumah Sakit Anak\nHappy Family & Kids',
    address: 'Jln. Surya Sejahtera 20',
  ),
  Hospital(
    image: 'assets/hospital-3.png',
    name: 'Rumah Sakit Jiwa\nTingkatan Paling Atas',
    address: 'Jln. Surya Sejahtera 20',
  ),
];
