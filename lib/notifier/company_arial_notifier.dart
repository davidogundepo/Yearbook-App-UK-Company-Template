
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/CompanyArial.dart';

class CompanyArialNotifier with ChangeNotifier {
  List<CompanyArial> _companyArialList = [];
  CompanyArial _currentCompanyArial;

  UnmodifiableListView<CompanyArial> get companyArialList => UnmodifiableListView(_companyArialList);

  CompanyArial get currentCompanyArial => _currentCompanyArial;

  set companyArialList(List<CompanyArial> companyArialList) {
    _companyArialList = companyArialList;
    notifyListeners();
  }

  set currentCompanyArial(CompanyArial companyArial) {
    _currentCompanyArial = companyArial;
    notifyListeners();
  }

}