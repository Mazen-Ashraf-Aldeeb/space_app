import 'package:flutter/material.dart';
import 'package:space_assignment/core/Colors/app_colors.dart';
import 'package:space_assignment/core/Text_Sizes/app-text_sizes.dart';
import 'package:space_assignment/models/planet_model/PlanetModel.dart';
import 'package:space_assignment/models/planet_model/planets_data.dart';
import 'package:space_assignment/screens/home_screen/home_screen.dart';
import 'package:space_assignment/screens/home_screen/widgets/planetPageView/planetPageView.dart';
import 'package:space_assignment/screens/planet_details_screen/planet_details_screen.dart';
import 'package:space_assignment/screens/planet_details_screen/widgets/PlanetDetaliswidget/planet_details_widget.dart';

class CustomButton extends StatelessWidget {
  bool isLogin;
   CustomButton({super.key, this.isLogin = true});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.red,
          foregroundColor: AppColors.white,
          padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 18),
          elevation: 0,
          shape: StadiumBorder(),

        ),
        onPressed: () {
             isLogin?
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => HomeScreen()

          )):  Navigator.push(context, MaterialPageRoute(
          builder: (context) => PlanetDetailsScreen()

          ));

        },
        child: Row(
          children: [
            ValueListenableBuilder(valueListenable: PlanetPageview.currentPage, builder: (context,currentPage ,child) {
              return Text(
                isLogin?"Explore":"Explore ${planets[currentPage].name}",style: AppTextSizes.textButton,);
            },),

            Spacer(),
            const Icon(
              Icons.arrow_forward,
              size: 22,
            ),
          ],

        ));

  }
}
