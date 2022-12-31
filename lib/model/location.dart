// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class Location {
  late List data;
  Location({
    required this.data,
  });

  Location.fromDocumentSnapshot(DocumentSnapshot snapshot) {
    data = snapshot['areas'];
  }
}
