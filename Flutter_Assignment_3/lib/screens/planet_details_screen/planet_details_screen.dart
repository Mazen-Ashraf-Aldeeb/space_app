import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_assignment/core/Colors/app_colors.dart';
import 'package:space_assignment/core/widgets/StackedAppBar/StackedAppBar.dart';
import 'package:space_assignment/models/planet_model/planets_data.dart';
import 'package:space_assignment/screens/home_screen/widgets/planetPageView/planetPageView.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_assignment/screens/planet_details_screen/widgets/PlanetDetaliswidget/planet_details_widget.dart';

class PlanetDetailsScreen extends StatelessWidget {
  const PlanetDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: StackedAppbar(
          image: "assets/images/StackedAppBar.png",
          isHomeScreen: false,
        ),
        body: Column(
          children: [
            SizedBox(height: 30,),
            ValueListenableBuilder(
              valueListenable: PlanetPageview.currentPage,
              builder: (context, currentPage, child) {
                return SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Flutter3DViewer(
                    src: modelsImages[currentPage],
                  ),
                );
              },
            ),
            SizedBox(height: 36),
            PlanetDetailsWidget(),
          ],
        ),
      ),
    );
  }
}
