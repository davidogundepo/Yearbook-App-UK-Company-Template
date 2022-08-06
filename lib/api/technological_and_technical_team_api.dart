import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/TechnologicalTechnicalTeam.dart';
import '../notifier/technological_and_technical_team_notifier.dart';

getTechnologicalTechnicalTeam(TechnologicalTechnicalTeamNotifier technologicalTechnicalTeamNotifier) async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('TechnologicalTechnicalTeam')
      .orderBy('name')
      .get();

  List<TechnologicalTechnicalTeam> _technologicalTechnicalTeamList = [];

  snapshot.docs.forEach((document) {
    TechnologicalTechnicalTeam technologicalTechnicalTeam = TechnologicalTechnicalTeam.fromMap(document.data());
    _technologicalTechnicalTeamList.add(technologicalTechnicalTeam);
  });

  technologicalTechnicalTeamNotifier.technologicalTechnicalTeamList = _technologicalTechnicalTeamList;
}
