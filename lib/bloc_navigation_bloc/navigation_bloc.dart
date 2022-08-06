
import 'package:bloc/bloc.dart';
import '../thrown_pages/digital_delivery_team_thrown_page.dart';
import '../thrown_pages/technological_and_technical_team_thrown_page.dart';
import '../thrown_pages/marketing_and_commercial_team_thrown_page.dart';
import '../thrown_pages/administration_team_thrown_page.dart';
import '../thrown_pages/finance_team_thrown_page.dart';
import '../thrown_pages/management_team_thrown_page.dart';

enum NavigationEvents {
  myTechnologicalTechnicalTeamPageClickedEvent,
  myDigitalDeliveryTeamPageClickedEvent,
  myMarketingCommercialTeamPageClickedEvent,
  myFinanceTeamPageClickedEvent,
  myAdministrationTeamPageClickedEvent,
  myManagementTeamPageClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {

  NavigationBloc() : super(MyTechnologicalTechnicalTeamPage());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.myTechnologicalTechnicalTeamPageClickedEvent:
        yield MyTechnologicalTechnicalTeamPage();
        break;
      case NavigationEvents.myDigitalDeliveryTeamPageClickedEvent:
        yield MyDigitalDeliveryTeamPage();
        break;
      case NavigationEvents.myMarketingCommercialTeamPageClickedEvent:
        yield MyMarketingCommercialTeamPage();
        break;
      case NavigationEvents.myFinanceTeamPageClickedEvent:
        yield MyFinanceTeamPage();
        break;
      case NavigationEvents.myAdministrationTeamPageClickedEvent:
        yield MyAdministrationTeamPage();
        break;
      case NavigationEvents.myManagementTeamPageClickedEvent:
        yield MyManagementTeamPage();
        break;
    }
  }


}
