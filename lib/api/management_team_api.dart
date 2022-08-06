import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/ManagementTeam.dart';
import '../notifier/management_team_notifier.dart';

getManagementTeam(ManagementTeamNotifier managementTeamNotifier) async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('ManagementTeam')
      .orderBy('name')
      .get();

  List<ManagementTeam> _managementTeamList = [];

  snapshot.docs.forEach((document) {
    ManagementTeam managementTeam = ManagementTeam.fromMap(document.data());
    _managementTeamList.add(managementTeam);
  });

  managementTeamNotifier.managementTeamList = _managementTeamList;
}
