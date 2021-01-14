import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soil_tester/ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soil Tester',
      theme: ThemeData(
        textTheme: GoogleFonts.itimTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
