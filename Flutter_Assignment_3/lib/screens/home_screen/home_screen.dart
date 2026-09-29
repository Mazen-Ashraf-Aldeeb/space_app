import 'package:flutter/material.dart';
import 'package:space_assignment/core/Colors/app_colors.dart';
import 'package:space_assignment/core/widgets/CustomElevatedButton/custom_button.dart';
import 'package:space_assignment/core/widgets/StackedAppBar/StackedAppBar.dart';
import 'package:space_assignment/screens/home_screen/widgets/planetPageView/planetPageView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: StackedAppbar(
          image: "assets/images/StackedAppBar.png",
          topTitle: "Explore",
          bottomTitle: "Which planet\nwould you like to explore?",
          isHomeScreen: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(child: PlanetPageview()),
              SizedBox(height: 50),
              CustomButton(isLogin: false),
            ],
          ),
        ),
      ),
    );
  }
}
