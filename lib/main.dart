import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import './notifier/company_arial_notifier.dart';
import './sidebar/sidebar_layout.dart';

import 'notifier/achievement_images_notifier.dart';
import 'notifier/technological_and_technical_team_notifier.dart';
import 'notifier/digital_delivery_team_notifier.dart';
import 'notifier/marketing_and_commercial_team_notifier.dart';
import 'notifier/sidebar_notifier.dart';
import 'notifier/finance_team_notifier.dart';
import 'notifier/administration_team_notifier.dart';
import 'notifier/management_team_notifier.dart';



Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runZonedGuarded(() {
    runApp(MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TechnologicalTechnicalTeamNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => DigitalDeliveryTeamNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => MarketingCommercialTeamNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => FinanceTeamNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => AdministrationTeamNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => ManagementTeamNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => AchievementsNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => CompanyArialNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => SideBarNotifier(),
          ),
        ],
        child: MyApp()
    ));
  }, FirebaseCrashlytics.instance.recordError);

}


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics analytics = FirebaseAnalytics();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SideBarLayout(),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
    );
  }
}
