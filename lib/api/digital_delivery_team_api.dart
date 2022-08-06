import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/DigitalDeliveryTeam.dart';
import '../notifier/digital_delivery_team_notifier.dart';

getDigitalDeliveryTeam(DigitalDeliveryTeamNotifier digitalDeliveryTeamNotifier) async {

  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('DigitalDeliveryTeam')
      .orderBy('name')
      .get();

  List<DigitalDeliveryTeam> _digitalDeliveryTeamList = [];

  snapshot.docs.forEach((document) {
    DigitalDeliveryTeam digitalDeliveryTeam = DigitalDeliveryTeam.fromMap(document.data());
    _digitalDeliveryTeamList.add(digitalDeliveryTeam);
  });

  digitalDeliveryTeamNotifier.digitalDeliveryTeamList = _digitalDeliveryTeamList;
}
