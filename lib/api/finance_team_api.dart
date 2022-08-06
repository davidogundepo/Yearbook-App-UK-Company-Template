import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/FinanceTeam.dart';
import '../notifier/finance_team_notifier.dart';

getFinanceTeam(FinanceTeamNotifier financeTeamNotifier) async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('FinanceTeam')
      .orderBy('id')
      .get();

  List<FinanceTeam> _financeTeamList = [];

  snapshot.docs.forEach((document) {
    FinanceTeam financeTeam = FinanceTeam.fromMap(document.data());
    _financeTeamList.add(financeTeam);
  });

  financeTeamNotifier.financeTeamList = _financeTeamList;
}
