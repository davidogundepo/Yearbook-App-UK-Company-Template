
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/MarketingCommercialTeam.dart';

class MarketingCommercialTeamNotifier with ChangeNotifier {
  List<MarketingCommercialTeam> _marketingCommercialTeamList = [];
  MarketingCommercialTeam _currentMarketingCommercialTeam;

  UnmodifiableListView<MarketingCommercialTeam> get marketingCommercialTeamList => UnmodifiableListView(_marketingCommercialTeamList);

  MarketingCommercialTeam get currentMarketingCommercialTeam => _currentMarketingCommercialTeam;

  set marketingCommercialTeamList(List<MarketingCommercialTeam> marketingCommercialTeamList) {
    _marketingCommercialTeamList = marketingCommercialTeamList;
    notifyListeners();
  }

  set currentMarketingCommercialTeam(MarketingCommercialTeam marketingCommercialTeam) {
    _currentMarketingCommercialTeam = marketingCommercialTeam;
    notifyListeners();
  }

}