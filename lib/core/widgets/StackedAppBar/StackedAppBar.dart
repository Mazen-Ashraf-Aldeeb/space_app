import 'package:flutter/material.dart';
import 'package:space_assignment/core/Colors/app_colors.dart';
import 'package:space_assignment/core/Text_Sizes/app-text_sizes.dart';
import 'package:space_assignment/models/planet_model/PlanetModel.dart' show planets;
import 'package:space_assignment/models/planet_model/planets_data.dart';
import 'package:space_assignment/screens/home_screen/home_screen.dart';
import 'package:space_assignment/screens/home_screen/widgets/planetPageView/planetPageView.dart';
import 'package:space_assignment/models/planet_model/PlanetModel.dart';
import 'package:space_assignment/screens/planet_details_screen/widgets/PlanetDetaliswidget/planet_details_widget.dart';
class StackedAppbar extends StatelessWidget implements PreferredSizeWidget {
  String topTitle;
  String bottomTitle;
  String image;
  bool isHomeScreen;
  Icon? arrowBack;

  StackedAppbar({
    super.key,
    required this.image,
    this.isHomeScreen = true,
    this.topTitle = "",
    this.bottomTitle = "",
    this.arrowBack,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(image, fit: BoxFit.cover,width: double.infinity,)),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, AppColors.bgColor],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        Positioned(
          top: 26,
          left: 0,
          right: 0,
          child: Center(
            child: ValueListenableBuilder(
              valueListenable: PlanetPageview.currentPage,
              builder: (context, currentPage, child) {
                return Text(

                  isHomeScreen
                      ? "Explore"
                      : topTitle = planets[currentPage].name,
                  style: AppTextSizes.titleLarge,
                );
              },
            ),
          ),
        ),

        if (isHomeScreen == false)
          Positioned(
            top: 22,
            right: 316,
            left: -16,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: AppColors.red,
                foregroundColor: AppColors.white
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,size: 22,),
            ),
          ),

        Positioned(
          bottom: 0,
          left: 18,
          child: Center(
            child: ValueListenableBuilder(
              valueListenable: PlanetPageview.currentPage,
              builder: (context, currentPage, child) {
                return Text(
                  isHomeScreen
                      ? "Which planet\nwould you like to explore?"
                      : bottomTitle =
                            planets[currentPage].title,
                  style: AppTextSizes.titleLarge,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize {
    return isHomeScreen?  const Size.fromHeight(237):Size.fromHeight(150);
  }
}
