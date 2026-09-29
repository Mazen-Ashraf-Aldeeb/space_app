import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_assignment/core/Colors/app_colors.dart';
import 'package:space_assignment/core/Text_Sizes/app-text_sizes.dart';
import 'package:space_assignment/screens/home_screen/home_screen.dart';
import 'package:space_assignment/core/widgets/CustomElevatedButton/custom_button.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/bgLogin.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Center(
                    child: Text(
                      "Explore\nThe\nUniverse",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(bottom: 16, left: 16, right: 16, child: CustomButton()),
          ],
        ),
      ),
    );
  }
}
