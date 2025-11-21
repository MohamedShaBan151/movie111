import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie111/core/utils/app_colors.dart';
import 'package:movie111/core/utils/custom_text_styles.dart';

import '../../../core/utils/app_assets.dart';
import '../../widgets/custom_elevated_button_filled.dart';

class Page1 extends StatelessWidget {
  final PageController controller;

  const Page1({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            AppAssets.onboardingImage2,
            fit: BoxFit.cover,
            width: double.infinity.w,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff084250),
                  Color(0xff084250).withValues(alpha: 0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity.w,
              padding: EdgeInsets.only(
                top: 34.r,
                bottom: 20.r,
                left: 16.r,
                right: 16.r,
              ),
              decoration: BoxDecoration(
                color: AppColors.black1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: Column(
                children: [
                  Text(
<<<<<<< HEAD
                    'Discover Movies',
=======
                    'Discover Movies', //TODO:localization
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
                    style: CustomTextStyles.style24w700.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.r),
                    child: Text(
<<<<<<< HEAD
=======
                      //TODO:localization
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
                      'Explore a vast collection of movies in all\nqualities and genres. Find your next\nfavorite film with ease.',
                      style: CustomTextStyles.style20w400.copyWith(
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomElevatedButtonFilled(
<<<<<<< HEAD
                    buttonText: 'Next',
=======
                    buttonText: 'Next', //TODO:localization
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
                    onPressed:
                        () => controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
