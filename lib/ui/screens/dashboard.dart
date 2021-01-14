import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soil_tester/ui/widgets/data_card.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: Container(
              width: _width,
              height: _height * 0.5,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    width: _width,
                    child: Row(
                      children: [
                        Text(
                          'List of tests',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                        Spacer(),
                        InkWell(
                          child: Icon(
                            Icons.settings,
                            color: Colors.lightBlueAccent,
                          ),
                          splashColor: Colors.amberAccent,
                          highlightColor: Colors.blueAccent,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  LayoutBuilder(builder: (context, constraints) {
                    if (constraints.maxWidth > 600) {
                      return Container(
                        height: _height * 0.3,
                        child: getTestList(4),
                      );
                    } else {
                      return Container(
                        height: _height * 0.4,
                        child: getTestList(2),
                      );
                    }
                  }),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: DataCard(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: DataCard(),
          ),
        ],
      ),
    );
  }

  Widget getTestList(int axisCount) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: axisCount,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4),
        itemCount: 10,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (context, i) {
          return FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      color: Colors.blue, style: BorderStyle.solid, width: 1)),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'ADD TEST',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Spacer(),
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.lightBlueAccent,
                  ),
                ],
              ));
        });
  }
}
