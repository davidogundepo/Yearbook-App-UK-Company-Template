import 'dart:collection';
import 'package:flutter/cupertino.dart';
import '../model/FinanceTeam.dart';


class FinanceTeamNotifier with ChangeNotifier {
  List<FinanceTeam> _financeTeamList = [];
  FinanceTeam _currentFinanceTeam;

  UnmodifiableListView<FinanceTeam> get financeTeamList => UnmodifiableListView(_financeTeamList);

  FinanceTeam get currentFinanceTeam => _currentFinanceTeam;

  set financeTeamList(List<FinanceTeam> financeTeamList) {
    _financeTeamList = financeTeamList;
    notifyListeners();
  }

  set currentFinanceTeam(FinanceTeam financeTeam) {
    _currentFinanceTeam = financeTeam;
    notifyListeners();
  }

}