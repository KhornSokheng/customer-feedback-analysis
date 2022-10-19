import 'dart:io';
import 'dart:typed_data';

import 'package:customer_feedback_analysis/model/prediction_detail.dart';

import '../model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class PredictionApi {

  Future insertUser({required User user}) async{
    /// reference to document
    final docUser = FirebaseFirestore.instance.collection('user').doc();

    user.setID(docUser.id);

    /// create document and write data to Firebase
    await docUser.set(user.toJson());
  }

  Future insertPredictionDetail({required PredictionDetail p}) async{
    /// reference to document
    final docPredDetail = FirebaseFirestore.instance.collection('prediction_detail').doc();

    p.setID(docPredDetail.id);

    /// create document and write data to Firebase
    await docPredDetail.set(p.toJson());
  }

}