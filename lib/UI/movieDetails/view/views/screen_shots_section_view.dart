import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:movie111/core/extentions/context_extention.dart';
import 'package:movie111/core/utils/app_assets.dart';
import 'package:movie111/core/utils/app_colors.dart';

class ScreenShotsSectionView extends StatelessWidget {
  const ScreenShotsSectionView({
    super.key,
    required this.screenShot1,
    required this.screenShot2,
    required this.screenShot3,
  });
=======
import 'package:movie111/core/utils/app_colors.dart';

class ScreenShotsSectionView extends StatelessWidget {
  const ScreenShotsSectionView(
      {super.key,
      required this.screenShot1,
      required this.screenShot2,
      required this.screenShot3});
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
  final String screenShot1;
  final String screenShot2;
  final String screenShot3;

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
=======
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      child: Column(
        spacing: 14.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
<<<<<<< HEAD
            context.getLocalization().screenshots,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Roboto',
              color: AppColors.white,
            ),
=======
            'Screen Shots',
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
                color: AppColors.white),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
          ),
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                screenShot1,
<<<<<<< HEAD
                errorBuilder:
                    (_, __, ___) => Image.asset(
                      AppAssets.failedImage,
                      fit: BoxFit.cover,
                      height: 176.h,
                      width: double.infinity,
                    ),
=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
                height: 176.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                screenShot2,
                height: 176.h,
                fit: BoxFit.cover,
<<<<<<< HEAD
                errorBuilder:
                    (_, __, ___) => Image.asset(
                      AppAssets.failedImage,
                      fit: BoxFit.cover,
                      height: 176.h,
                      width: double.infinity,
                    ),
=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                screenShot3,
<<<<<<< HEAD
                errorBuilder:
                    (_, __, ___) => Image.asset(
                      AppAssets.failedImage,
                      fit: BoxFit.cover,
                      height: 176.h,
                      width: double.infinity,
                    ),
=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
                height: 176.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
