import 'package:flutter/material.dart';
import 'package:space_assignment/screens/home_screen/widgets/planetPageView/planetPageView.dart';
import 'package:space_assignment/screens/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
  PlanetPageview planet = PlanetPageview();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home: LoginScreen(),
    );
  }

}


