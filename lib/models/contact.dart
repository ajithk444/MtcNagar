// models/contact.dart
//import 'package:cloud_firestore/cloud_firestore.dart';

class Contact {
  int id;
  String name;
  String designation;
  String mobile;
  String address;
  String avatar;

  Contact(this.id, this.name, this.designation, this.mobile, this.address);

  //final DocumentReference reference;

  // Contact.fromMap(Map<String, dynamic> map, {this.reference})
  //     : assert(map['id'] != null),
  //       assert(map['name'] != null),
  //       assert(map['designation'] != null),
  //       assert(map['mobile'] != null),
  //       assert(map['address'] != null),
  //       assert(map['avatar'] != null),
  //       id = map['id'],
  //       name = map['name'],
  //       address = map['address'],
  //       mobile = map['mobile'],
  //       designation = map['designation'],
  //       avatar = map['avatar'];

  // Contact.fromSnapshot(DocumentSnapshot snapshot)
  //     : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "User<$name:$id>";
}
