import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soil_tester/ui/screens/dashboard.dart';
import 'package:soil_tester/ui/widgets/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NavigationDrawer(),
      appBar: new AppBar(
        backgroundColor: Colors.green[400],
        title: new Text("Home"),
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.white,
          tabs: [
            new Tab(
              icon: new Icon(FontAwesomeIcons.eyeDropper),
              text: "SOIL TESTS",
            ),
            new Tab(
              icon: new Icon(FontAwesomeIcons.chartPie),
              text: "ANALYTICS",
            ),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      body: TabBarView(
        children: [
          new Dashboard(),
          new Text("This is chat Tab View"),
        ],
        controller: _tabController,
      ),
    );
  }
}
