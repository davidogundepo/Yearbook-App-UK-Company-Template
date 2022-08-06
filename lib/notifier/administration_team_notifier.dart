
import 'dart:collection';
import 'package:flutter/cupertino.dart';
import '../model/AdministrationTeam.dart';

class AdministrationTeamNotifier with ChangeNotifier {
  List<AdministrationTeam> _administrationTeamList = [];
  AdministrationTeam _currentAdministrationTeam;

  UnmodifiableListView<AdministrationTeam> get administrationTeamList => UnmodifiableListView(_administrationTeamList);

  AdministrationTeam get currentAdministrationTeam => _currentAdministrationTeam;

  set administrationTeamList(List<AdministrationTeam> administrationTeamList) {
    _administrationTeamList = administrationTeamList;
    notifyListeners();
  }

  set currentAdministrationTeam(AdministrationTeam administrationTeam) {
    _currentAdministrationTeam = administrationTeam;
    notifyListeners();
  }

}