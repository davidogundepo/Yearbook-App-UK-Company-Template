
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/CompanyArial.dart';
import '../notifier/company_arial_notifier.dart';

getCompanyArial(CompanyArialNotifier companyArialNotifier) async{
  QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('CompanyArial').get();

  List<CompanyArial> _companyArialList = [];

  snapshot.docs.forEach((document) {
    CompanyArial companyArial = CompanyArial.fromMap(document.data());
    _companyArialList.add(companyArial);
  });

  companyArialNotifier.companyArialList = _companyArialList;
}