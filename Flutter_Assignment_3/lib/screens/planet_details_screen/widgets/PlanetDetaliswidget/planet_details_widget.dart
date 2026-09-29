import 'package:flutter/cupertino.dart';
import 'package:space_assignment/core/Colors/app_colors.dart';
import 'package:space_assignment/core/Text_Sizes/app-text_sizes.dart';
import 'package:space_assignment/models/planet_model/PlanetModel.dart';
import 'package:space_assignment/models/planet_model/planets_data.dart';
import 'package:space_assignment/screens/home_screen/widgets/planetPageView/planetPageView.dart';

class PlanetDetailsWidget extends StatelessWidget {

  PlanetDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: ValueListenableBuilder(
          valueListenable: PlanetPageview.currentPage,
          builder: (context, currentPage, child) {
            final planet = planets[currentPage];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About", style: AppTextSizes.titleLarge),
                  SizedBox(height: 8),
                  Text(planet.about,style:TextStyle(color: AppColors.white,fontWeight: FontWeight.w300,fontSize: 16)),
                  SizedBox(height: 15,),
                  Text("Distance from Sun (km):${planet.distanceFromSun}",style: AppTextSizes.bodyLarge,),
                  SizedBox(height: 5),
                  Text("Length of Day (hours):${planet.lengthOfDay}",style: AppTextSizes.bodyLarge),
                  SizedBox(height: 5),
                  Text("Orbital Period (Earth years):${planet.orbitalPeriod}",style: AppTextSizes.bodyLarge),
                  SizedBox(height: 5),
                  Text("Radius (km):${planet.radius}",style: AppTextSizes.bodyLarge),
                  SizedBox(height: 5),
                  Text("Mass (kg):${planet.mass}",style: AppTextSizes.bodyLarge),
                  SizedBox(height: 5),
                  Text("Gravity (m/s²):${planet.gravity}",style: AppTextSizes.bodyLarge),
                  SizedBox(height: 5),
                  Text("Surface Area (km²):${planet.surfaceArea}",style: AppTextSizes.bodyLarge)

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
