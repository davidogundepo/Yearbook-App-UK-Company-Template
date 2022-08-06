import 'dart:collection';
import 'package:flutter/cupertino.dart';
import '../model/DigitalDeliveryTeam.dart';


class DigitalDeliveryTeamNotifier with ChangeNotifier {
  List<DigitalDeliveryTeam> _digitalDeliveryTeamList = [];
  DigitalDeliveryTeam _currentDigitalDeliveryTeam;

  UnmodifiableListView<DigitalDeliveryTeam> get digitalDeliveryTeamList => UnmodifiableListView(_digitalDeliveryTeamList);

  DigitalDeliveryTeam get currentDigitalDeliveryTeam => _currentDigitalDeliveryTeam;

  set digitalDeliveryTeamList(List<DigitalDeliveryTeam> digitalDeliveryTeamList) {
    _digitalDeliveryTeamList = digitalDeliveryTeamList;
    notifyListeners();
  }

  set currentDigitalDeliveryTeam(DigitalDeliveryTeam digitalDeliveryTeam) {
    _currentDigitalDeliveryTeam = digitalDeliveryTeam;
    notifyListeners();
  }

}