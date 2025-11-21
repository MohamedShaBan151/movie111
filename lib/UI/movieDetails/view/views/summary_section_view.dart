import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:movie111/core/extentions/context_extention.dart';
=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
import 'package:movie111/core/utils/app_colors.dart';

class SummarySectionView extends StatelessWidget {
  const SummarySectionView({super.key, required this.summary});

  final String? summary;

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
      padding: EdgeInsets.symmetric(horizontal: 16.w),
=======
      padding: EdgeInsets.symmetric(horizontal: 16),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.h,
        children: [
          Text(
<<<<<<< HEAD
            context.getLocalization().summary,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Roboto',
              color: AppColors.white,
            ),
          ),
          Text(
            (summary == null || summary == '')
                ? context.getLocalization().nosummary
                : summary!,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto',
              color: AppColors.white,
            ),
=======
            'Summary',
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
                color: AppColors.white),
          ),
          Text(
            (summary == null || summary == '')
                ? 'No Summary Available For This Movie!'
                : summary!,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
                color: AppColors.white),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
          ),
        ],
      ),
    );
  }
}
