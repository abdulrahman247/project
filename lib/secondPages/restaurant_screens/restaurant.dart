import 'package:flutter/material.dart';
import 'package:GRSON/secondpages/theme/Theme.dart';
import 'package:GRSON/secondpages/widgets/drawer.dart';

import 'Restaurant Page/restaurantHome.dart';

class Restaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "Restaurant",
              ),
              elevation: 30,
              brightness: Brightness.dark,
              bottom: TabBar(indicatorColor: Colors.white, tabs: [
                Tab(
                  child: Text(
                    "My Restaurant",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Operations",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
              ]),
            ),
            backgroundColor: ArgonColors.bgColorScreen,
            drawer: ArgonDrawer(
              currentPage: "Home",
            ),
            body: TabBarView(
              children: [
                RestaurantHome(),
                Icon(Icons.directions_bike),
              ],
            )));
  }
}
