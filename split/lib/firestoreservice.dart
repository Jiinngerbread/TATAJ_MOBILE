import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'classes/Goals.dart';


final CollectionReference myCollection = Firestore.instance.collection('goalsList');

class FirestoreService {
  
  Future<Goals> createTODOGoal(String goalName, String goalAim,String goalCategory,String startDate,String endDate, 
        String depositPerPeriod, String currentTotal, String teamMembers, String goalMasterTarget,String paymentFrequency,
        String goalType, String accountNumber) async {
      final TransactionHandler createTransaction = (Transaction tx) async {
      final DocumentSnapshot ds = await tx.get(myCollection.document());

      final Goals goals = Goals(goalName, goalAim,goalCategory,startDate,endDate, 
        depositPerPeriod, currentTotal, teamMembers,  goalMasterTarget, paymentFrequency, goalType, accountNumber);
      final Map<String, dynamic> data = goals.toMap();
      await tx.set(ds.reference, data);
      return data;
    };

    return Firestore.instance.runTransaction(createTransaction).then((mapData) {
      return Goals.fromMap(mapData);
    }).catchError((error) {
      print('error: $error');
      return null;
    });
  }

  Stream<QuerySnapshot> getGoalList({int offset, int limit}) {
    Stream<QuerySnapshot> snapshots = myCollection.snapshots();

    if (offset != null) {
      snapshots = snapshots.skip(offset);
    }
    if (limit != null) {
      snapshots = snapshots.take(limit);
    }
    return snapshots;
  }

  
}
