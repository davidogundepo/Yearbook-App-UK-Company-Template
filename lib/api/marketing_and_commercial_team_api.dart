import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/MarketingCommercialTeam.dart';
import '../notifier/marketing_and_commercial_team_notifier.dart';

getMarketingCommercialTeam(MarketingCommercialTeamNotifier marketingCommercialTeamNotifier) async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('MarketingCommercialTeam')
      .orderBy('name')
      .get();

  List<MarketingCommercialTeam> _marketingCommercialTeamList = [];

  snapshot.docs.forEach((document) {
    MarketingCommercialTeam marketingCommercialTeam = MarketingCommercialTeam.fromMap(document.data());
    _marketingCommercialTeamList.add(marketingCommercialTeam);
  });

  marketingCommercialTeamNotifier.marketingCommercialTeamList = _marketingCommercialTeamList;
}
