import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie111/core/utils/app_colors.dart';

class CoustomeInformationContainer extends StatelessWidget {
  const CoustomeInformationContainer({
    super.key,
    required this.icon,
    required this.data,
  });
=======
import 'package:movie111/core/utils/app_colors.dart';

class CoustomeInformationContainer extends StatelessWidget {
  const CoustomeInformationContainer(
      {super.key, required this.icon, required this.data});
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
  final String icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          ImageIcon(AssetImage(icon), size: 25.sp, color: AppColors.amber),
          SizedBox(width: 14.w),
          Text(
            data,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Roboto',
              color: AppColors.white,
            ),
          ),
=======
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(icon),
            size: 25,
            color: AppColors.amber,
          ),
          SizedBox(
            width: 14,
          ),
          SizedBox(
            child: Text(
              data,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  color: AppColors.white),
            ),
          )
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
        ],
      ),
    );
  }
}
