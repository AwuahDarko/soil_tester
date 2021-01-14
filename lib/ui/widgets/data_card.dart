import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DataCardState();
}

class DataCardState extends State<DataCard> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: _width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Card Title',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    child: Icon(
                      FontAwesomeIcons.ellipsisV,
                      size: 16,
                    ),
                    onTap: (){
                      print('Ouch!');
                    },
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Sub title',),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.grey[200],
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                color: Colors.black26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlatButton(onPressed: () => print('Ouch!'), child: Text(
                      'Action',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blue
                    ),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
