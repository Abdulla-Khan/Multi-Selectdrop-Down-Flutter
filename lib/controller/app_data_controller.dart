import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/model/location.dart';
import 'package:get/get.dart';

import '../model/subject_data_model.dart';

class AppDataController extends GetxController {
  List<SubjectModel> subjectData = [];
  List selectedLocation = [];

  final location = [].obs;

  @override
  void onReady() {
    location.bindStream(lista());
    super.onReady();
  }

  Stream<List<Location>> lista() {
    Stream<QuerySnapshot> stream =
        FirebaseFirestore.instance.collection('areas').snapshots();

    return stream.map((qShot) =>
        qShot.docs.map((doc) => Location(data: doc['areas'])).toList());
  }
}