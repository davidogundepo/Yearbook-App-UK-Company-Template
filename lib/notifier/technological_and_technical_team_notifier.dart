
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/TechnologicalTechnicalTeam.dart';

class TechnologicalTechnicalTeamNotifier with ChangeNotifier {
  List<TechnologicalTechnicalTeam> _technologicalTechnicalTeamList = [];
  TechnologicalTechnicalTeam _currentTechnologicalTechnicalTeam;

  UnmodifiableListView<TechnologicalTechnicalTeam> get technologicalTechnicalTeamList => UnmodifiableListView(_technologicalTechnicalTeamList);

  TechnologicalTechnicalTeam get currentTechnologicalTechnicalTeam => _currentTechnologicalTechnicalTeam;

  set technologicalTechnicalTeamList(List<TechnologicalTechnicalTeam> technologicalTechnicalTeamList) {
    _technologicalTechnicalTeamList = technologicalTechnicalTeamList;
    notifyListeners();
  }

  set currentTechnologicalTechnicalTeam(TechnologicalTechnicalTeam technologicalTechnicalTeam) {
    _currentTechnologicalTechnicalTeam = technologicalTechnicalTeam;
    notifyListeners();
  }

}