import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NavigationDrawerState();
}

class NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: _height,
      width: _width * .65,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green[400]),
              accountName: Text("Jack Knife"),
              accountEmail: Text("info@piuniversal.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "JK",
                  style: TextStyle(fontSize: 40.0, color: Colors.black),
                ),
              ),
            ),
          ),
          Positioned(
            top: 185,
              left: 0,
              right: 0,
              bottom: 65,
              child: ListView(
                children: [
                  linkMenuDrawer('Menu Item',Icons.android_outlined, Colors.blue, () {
                    print('Ouch!');
                  }),
                  Divider()
                ],
          )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
            color: Colors.grey,
            child: ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.white,),
              title: Text(
                'Log Out',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              onTap: (){
                print('Ouch!');
              },
            ),
          ),)
        ],
      ),
    );
  }

  Widget linkMenuDrawer(String title,IconData icon, Color color, Function onPressed) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.black,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: color,),
            SizedBox(width: 10,),
            Text(
              title,
              style: TextStyle(fontSize: 15.0),
            ),
          ],
        )
      ),
    );
  }

}
