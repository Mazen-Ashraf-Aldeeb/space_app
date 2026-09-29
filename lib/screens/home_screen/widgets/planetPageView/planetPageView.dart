import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_assignment/core/Colors/app_colors.dart';
import 'package:space_assignment/core/Text_Sizes/app-text_sizes.dart';
import 'package:space_assignment/core/widgets/CustomElevatedButton/custom_button.dart';
import 'package:space_assignment/models/planet_model/PlanetModel.dart';
import 'package:space_assignment/models/planet_model/planets_data.dart';
class PlanetPageview extends StatefulWidget {

  static ValueNotifier<int> currentPage = ValueNotifier(0);
  PlanetPageview({super.key});

  @override
  State<PlanetPageview> createState() => _PlanetPageviewState();
}

class _PlanetPageviewState extends State<PlanetPageview> {
  final PageController controller = PageController();

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    PlanetPageview.currentPage.value = index;
                  });
                },
                controller: controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index]);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: AppColors.red,
                    foregroundColor: AppColors.white,
                  ),
                  onPressed: () {
                    if (PlanetPageview.currentPage.value > 0) {
                      controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Center(child: Icon(Icons.arrow_back, size: 22)),
                ),
                Spacer(),
                Text(
                  planets[PlanetPageview.currentPage.value].name,
                  style: AppTextSizes.titleLarge,
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: AppColors.red,
                    foregroundColor: AppColors.white,
                  ),
                  onPressed: () {
                    if (PlanetPageview.currentPage.value <
                        images.length - 1) {
                      controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Center(child: Icon(Icons.arrow_forward, size: 22)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
