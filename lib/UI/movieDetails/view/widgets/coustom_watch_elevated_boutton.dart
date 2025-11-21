import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie111/core/utils/app_colors.dart';

class CustomWatchElevatedButton extends StatelessWidget {
<<<<<<< HEAD
  const CustomWatchElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
  });
=======
  const CustomWatchElevatedButton(
      {super.key, required this.title, this.onPressed});
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16.r),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          backgroundColor: AppColors.red,
          foregroundColor: AppColors.white,
          minimumSize: Size(double.infinity, 58.h),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'Roboto',
          ),
=======
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
            backgroundColor: AppColors.red,
            foregroundColor: AppColors.white,
            minimumSize: Size(double.infinity, 58.h)),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'Roboto'),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
        ),
      ),
    );
  }
}
