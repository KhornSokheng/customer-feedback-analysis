import 'dart:io';
import 'dart:typed_data';

import 'package:customer_feedback_analysis/model/prediction_detail.dart';

import '../model/team.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class TeamApi {

  Future insertTeam({required Team team}) async{
    /// reference to document
    final docTeam = FirebaseFirestore.instance.collection('team').doc();

    team.setID(docTeam.id);

    /// create document and write data to Firebase
    await docTeam.set(team.toJson());
  }


}