import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/AdministrationTeam.dart';
import '../notifier/administration_team_notifier.dart';

getAdministrationTeam(AdministrationTeamNotifier administrationTeamNotifier) async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('AdministrationTeam')
      .orderBy('name')
      .get();

  List<AdministrationTeam> _administrationTeamList = [];

  snapshot.docs.forEach((document) {
    AdministrationTeam administrationTeam = AdministrationTeam.fromMap(document.data());
    _administrationTeamList.add(administrationTeam);
  });

  administrationTeamNotifier.administrationTeamList = _administrationTeamList;
}
