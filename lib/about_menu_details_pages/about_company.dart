
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../api/company_arial_images_api.dart';
import '../api/achievement_images_api.dart';
import '../notifier/company_arial_notifier.dart';
import '../notifier/achievement_images_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pie_chart/pie_chart.dart';


String companyName = "AAB Company";
String aboutCompany = "About $companyName";

String visionSwipe = "Swipe left on 'OUR VISION STATEMENT'  >>>";
String visionTitle = "OUR VISION STATEMENT";
String visionStatement = "Raising the total livelihood through interactive structure.";
String missionTitle = "OUR MISSION STATEMENT";
String missionStatement = "Mobilizing Moral, Social, and Religious tools, by dedicated and vision driven staff in a proactive environment of leaders and learning, which is geared towards impacting and equipping our staff to be THE TOTAL YOUTH the world will be proud of.";

String coreValues = "OUR CORE VALUES";
String cvStatement1 = "1. We are dedicated to the success of each clients \n\n";
String cvStatement2 = "2. We provide solutions as well as innovation for the future\n\n";
String cvStatement3 = "3. We are genuinely interested in deploying the full capacity of each tasks.\n\n";
String cvStatement4 = "4. We create a social atmosphere for our staff and we believe everyone can excel.";

String whyCompany = "WHY $companyName?".toUpperCase();
String whyCompanyStatement = "$companyName was established on the 3rd of October 2015 out of the vision and passion of Dr. Edwin Greaves to empower today’s youth for tomorrows challenges.\n\nWe offer staff (both domestic and international) the opportunity to earn an unparalleled high-quality spiritual experience. With passionate and  qualified pastoral staff, a clean and caring company atmosphere, and the resources to supply staff with the skills necessary for their continued personal success, our company looks to help staff to realize their potential.";
String companyBody = "Company Body\n\n";
String companyBodyStatement = "We have 62 non-managerial staff and 9 management team staff in $companyName.";
String populationChart = "$companyName Population Chart";
String staffBody = "Staff Body\n\n";
String staffBodyStatement = "We currently have 71 staff in $companyName, 43 male staff and 28 female staff.";
String staffPopulationChart = "$companyName Staff Population Chart";

String standardSwipe = "Swipe up for all Company businesses offered";
String standardsOffered = "Some of the company's businesses provided in $companyName are:\n\n";
String standardsOffered1 = "1. Provision of bespoke solutions\n";
String standardsOffered2 = "2. Data insights\n";
String standardsOffered3 = "3. Website Development\n";
String standardsOffered4 = "4. Creation of software and technological tools\n";
String standardsOffered5 = "5. Technological researches and developmental activities\n\n";


String extraCurricularActs = "Extra-curricular Activities offered in $companyName\n\n";
String extraCurricularActsStatement1 = "1. Annual Charity Challenge\n";
String extraCurricularActsStatement2 = "2. Monthly Cooking competition\n";
String extraCurricularActsStatement3 = "3. Brief weekend activity reflections\n";
String extraCurricularActsStatement4 = "4. Puzzles and online gaming.\n\n";

String companyArialViewsSwipe = "Swipe left or right for more photos";
String companyArialViews = "Some Arial views of $companyName";
String companyAchievementsSwipe = "Swipe left or right for more photos";
String companyAchievements = "Some of our achievements";
String moreInfoAboutCompany = "For more information about $companyName please trust and click me";
String moreInfoAboutCompanyURL = "https://rccghgz.uk/";

double maleStaffPopulation = 43;
double femaleStaffPopulation = 28;

double technicalStaffPopulation = 62;
double adminStaffPopulation = 9;
double maintenanceStaffPopulation = 9;
double managementStaffPopulation = 9;


Color backgroundColor = Color.fromRGBO(43, 85, 100, 1.0);
Color cardBackgroundColor = Color.fromRGBO(64, 115, 133, 1.0);
Color appBarIconColor = Colors.white;
Color appBarTextColor = Colors.white;
Color appBarBackgroundColor = Color.fromRGBO(43, 85, 100, 1.0);
Color cardTextColor = Colors.white;
Color cardColor = Color.fromRGBO(64, 115, 133, 1.0);
Color boxDecorationColor = Color.fromRGBO(64, 115, 133, 1.0);
Color chartBackgroundColor = Color.fromRGBO(28, 26, 26, 1.0);
Color materialColor = Colors.transparent;
Color textColor = Colors.white;
Color firstCompanyChartColor = Color.fromRGBO(28, 62, 74, 1.0);
Color secondCompanyChartColor = Color.fromRGBO(99, 167, 191, 1.0);
Color thirdCompanyChartColor = Color.fromRGBO(64, 115, 133, 1.0);
Color fourthCompanyChartColor = Color.fromRGBO(35, 71, 84, 1.0);
Color firstStaffChartColor = Color.fromRGBO(28, 62, 74, 1.0);
Color secondStaffChartColor = Color.fromRGBO(99, 167, 191, 1.0);


class aboutCompanyDetails extends StatefulWidget {

  aboutCompanyDetails({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _aboutCompanyDetailsState createState() => _aboutCompanyDetailsState();
}

class _aboutCompanyDetailsState extends State<aboutCompanyDetails> {

  final controlla = PageController(
    initialPage: 0,
  );

  var scrollDirection = Axis.horizontal;


  @override
  void initState() {
    CompanyArialNotifier companyArialNotifier = Provider.of<CompanyArialNotifier>(context, listen: false);
    getCompanyArial(companyArialNotifier);

    AchievementsNotifier achievementsNotifier = Provider.of<AchievementsNotifier>(context, listen: false);
    getAchievements(achievementsNotifier);

    companyMap.putIfAbsent("Technological & Technical Staff", () => 46);
    companyMap.putIfAbsent("Administrative Staff", () => 11);
    companyMap.putIfAbsent("Maintenance Personals", () => 5);
    companyMap.putIfAbsent("Management Team", () => 9);

    staffMap.putIfAbsent("Male Staff", () => 43);
    staffMap.putIfAbsent("Female Staff", () => 28);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CompanyArialNotifier companyArialNotifier = Provider.of<CompanyArialNotifier>(context);
    AchievementsNotifier achievementsNotifier = Provider.of<AchievementsNotifier>(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(aboutCompany,
          style: TextStyle(
            color: appBarIconColor
          )
        ),
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: appBarIconColor),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
        elevation: 10,
        backgroundColor: appBarBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(visionSwipe,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: cardTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: BorderRadius.circular(5)
                ),
              ),
            ),
            Container(
              height: 500,
              child: PageView(
                controller: controlla,
                scrollDirection: scrollDirection,
                pageSnapping: true,
                children: <Widget>[
                  Container(
                    child: Card(
                      color: cardBackgroundColor,
                      elevation: 4,
                      margin: EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    visionTitle,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cardTextColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
                              child: Text(
                                visionStatement,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: cardTextColor,
                                  fontSize: 18
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      color: cardBackgroundColor,
                      elevation: 4,
                      margin:   EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    missionTitle,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cardTextColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
                              child: Text(
                                missionStatement,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: cardTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      color: cardBackgroundColor,
                      elevation: 4,
                      margin:   EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    coreValues,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cardTextColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: cvStatement1,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: cardTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: cvStatement2,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: cardTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: cvStatement3,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: cardTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: cvStatement4,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: cardTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      color: cardBackgroundColor,
                      elevation: 4,
                      margin:   EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(
                                child: Container(
                                  child: Text(
                                    whyCompany,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: cardTextColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
                              child: Text(
                                whyCompanyStatement,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: cardTextColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text:TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: staffBody,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: staffBodyStatement,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(10)
                ),
                child: Material(
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 30, left: 10),
                            child: Text(populationChart,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: cardTextColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          PieChart(
                            dataMap: companyMap,
                            animationDuration: Duration(milliseconds: 8000),
                            chartLegendSpacing: 42,
                            chartRadius: MediaQuery.of(context).size.width / 2.7,
                            colorList: companyColorList,
                            initialAngleInDegree: 0,
                            chartType: ChartType.disc,
                            legendOptions: LegendOptions(
                              showLegendsInRow: false,
                              legendPosition: LegendPosition.bottom,
                              showLegends: true,
                              legendShape: BoxShape.circle,
                              legendTextStyle: TextStyle(
                                color: cardTextColor,
                              ),
                            ),
                            chartValuesOptions: ChartValuesOptions(
                              showChartValueBackground: true,
                              showChartValues: true,
                              // showChartValueLabel: true,
                              chartValueStyle: defaultChartValueStyle.copyWith(
                                color: textColor.withOpacity(0.9),
                              ),
                              showChartValuesInPercentage: false,
                              showChartValuesOutside: false,
                              decimalPlaces: 0,
                              chartValueBackgroundColor: chartBackgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text:TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: staffBody,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: staffBodyStatement,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                height: 370,
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(10)
                ),
                child: Material(
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 30, left: 10),
                            child: Text(staffPopulationChart,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: cardTextColor,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          PieChart(
                            dataMap: staffMap,
                            animationDuration: Duration(milliseconds: 8000),
                            chartLegendSpacing: 42,
                            chartRadius: MediaQuery.of(context).size.width / 2.7,
                            colorList: staffColorList,
                            initialAngleInDegree: 0,
                            chartType: ChartType.ring,
                            legendOptions: LegendOptions(
                              showLegendsInRow: false,
                              legendPosition: LegendPosition.bottom,
                              showLegends: true,
                              legendShape: BoxShape.circle,
                              legendTextStyle: TextStyle(
                                color: cardTextColor,
                              ),
                            ),
                            chartValuesOptions: ChartValuesOptions(
                              showChartValueBackground: true,
                              showChartValues: true,
                              // showChartValueLabel: true,
                              chartValueStyle: defaultChartValueStyle.copyWith(
                                color: textColor.withOpacity(0.9),
                              ),
                              showChartValuesInPercentage: false,
                              showChartValuesOutside: false,
                              decimalPlaces: 0,
                              chartValueBackgroundColor: chartBackgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(standardsOffered,
                style: TextStyle(
                    fontSize: 20,
                    color: cardTextColor,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(standardSwipe,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: cardTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(5)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                height: 300,
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                      child: SingleChildScrollView(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text:TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: standardsOffered,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: standardsOffered1,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: standardsOffered2,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: standardsOffered3,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: standardsOffered4,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: standardsOffered5,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Container(
                height: 300,
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                      child: SingleChildScrollView(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text:TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: extraCurricularActs,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                  text: extraCurricularActsStatement1,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: extraCurricularActsStatement2,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: extraCurricularActsStatement3,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                              TextSpan(
                                  text: extraCurricularActsStatement4,
                                  style: TextStyle(
                                    color: cardTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(companyArialViews,
              style: TextStyle(
                fontSize: 20,
                color: cardTextColor,
                fontWeight: FontWeight.w500
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(companyArialViewsSwipe,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: cardTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(5)
                ),
              ),
            ),
            Container(
              height: 340,
              child: Swiper(
                autoplay: true,
                viewportFraction: 0.8,
                scale: 0.9,
                itemCount: companyArialNotifier.companyArialList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  companyArialNotifier.companyArialList[index]
                                      .image
                              ),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: cardColor
                        ),
                        child: ListTile(
                          title: Center(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                companyArialNotifier.companyArialList[index]
                                    .toastName,
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(companyAchievements,
              style: TextStyle(
                fontSize: 20,
                color: cardTextColor,
                fontWeight: FontWeight.w500
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                child: Material (
                  color: materialColor,
                  child: InkWell(
                    splashColor: cardTextColor,
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(companyArialViewsSwipe,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: cardTextColor,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: boxDecorationColor.withAlpha(50),
                    borderRadius: new BorderRadius.circular(5)
                ),
              ),
            ),
            Container(
              height: 340,
              child: Swiper(
                autoplay: true,
                viewportFraction: 0.8,
                scale: 0.9,
                itemCount: achievementsNotifier.achievementsList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                          image: DecorationImage(
//                            colorFilter: ColorFilter.linearToSrgbGamma(),
                            image: CachedNetworkImageProvider(
                                achievementsNotifier.achievementsList[index].image
                            ),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                          color: cardColor
                        ),
                        child: ListTile(
                          title: Center(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                achievementsNotifier.achievementsList[index].toastName,
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
                itemWidth: 350,
                layout: SwiperLayout.STACK,
                pagination: SwiperPagination(),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 30, top: 20),
              child: RichText(
                text: TextSpan(
                  text: moreInfoAboutCompany,
                  style: TextStyle(
                    fontSize: 17,
                    color: cardTextColor,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                    launch(moreInfoAboutCompanyURL);
                  }
                ),
              )
            ),

          ],
        ),
      ),
    );

  }
}

class CompanyStaffPopulation{
  String x;
  double y;
  CompanyStaffPopulation(this.x,this.y);
}

dynamic getStaffPopulationData(){
  List<CompanyStaffPopulation> staffPopulationData = <CompanyStaffPopulation>[
    CompanyStaffPopulation('Male Staff', maleStaffPopulation),
    CompanyStaffPopulation('Female Staff', femaleStaffPopulation),
  ];
  return staffPopulationData;
}

class CompanyPopulation{
  String x;
  double y;
  CompanyPopulation(this.x,this.y);
}

dynamic getCompanyPopulationData(){
  List<CompanyPopulation> companyPopulationData = <CompanyPopulation>[
    CompanyPopulation('Technological & Technical Staff', technicalStaffPopulation),
    CompanyPopulation('Administrative Staff', adminStaffPopulation),
    CompanyPopulation('Maintenance Personals', maintenanceStaffPopulation),
    CompanyPopulation('Management Team', managementStaffPopulation),
  ];
  return companyPopulationData;
}


bool toggle = false;
Map<String, double> companyMap = Map();

Map<String, double> staffMap = Map();

List<Color> companyColorList = [
  firstCompanyChartColor,
  secondCompanyChartColor,
  thirdCompanyChartColor,
  fourthCompanyChartColor,
];

List<Color> staffColorList = [
  firstStaffChartColor,
  secondStaffChartColor,
];