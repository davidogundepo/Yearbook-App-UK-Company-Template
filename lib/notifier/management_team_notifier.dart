import 'dart:collection';
import 'package:flutter/cupertino.dart';
import '../model/ManagementTeam.dart';


class ManagementTeamNotifier with ChangeNotifier {
  List<ManagementTeam> _managementTeamList = [];
  ManagementTeam _currentManagementTeam;

  UnmodifiableListView<ManagementTeam> get managementTeamList => UnmodifiableListView(_managementTeamList);

  ManagementTeam get currentManagementTeam => _currentManagementTeam;

  set managementTeamList(List<ManagementTeam> managementTeamList) {
    _managementTeamList = managementTeamList;
    notifyListeners();
  }

  set currentManagementTeam(ManagementTeam managementTeam) {
    _currentManagementTeam = managementTeam;
    notifyListeners();
  }

}