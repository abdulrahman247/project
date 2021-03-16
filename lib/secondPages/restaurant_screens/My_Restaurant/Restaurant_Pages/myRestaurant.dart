import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:flutter/material.dart';
import 'Information/homepage.dart';
import 'Queue/homePage.dart';
import 'Take_Away/takeaway.dart';

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 25),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "Restaurant");
            },
          ),
          title: Text(
            "My Restaurant",
          ),
          elevation: 30,
          brightness: Brightness.dark,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  "Information",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Queues",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Take Away",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        body: TabBarView(
          children: [
            HomeInformationPage(),
            HomeQueuePage(),
            HomeTake_AwayPage(),
          ],
        ),
      ),
    );
  }
}
