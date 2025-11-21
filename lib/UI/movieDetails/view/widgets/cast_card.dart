import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:movie111/core/extentions/context_extention.dart';
import 'package:movie111/core/utils/app_assets.dart';
import 'package:movie111/core/utils/app_colors.dart';

class CastCard extends StatelessWidget {
  const CastCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.character,
  });

=======
import 'package:movie111/core/utils/app_colors.dart';

class CastCard extends StatelessWidget {
  const CastCard(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.character});
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
  final String imagePath;
  final String name;
  final String character;

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        spacing: 10.w,
=======
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(16)),
      child: Row(
        spacing: 10,
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imagePath,
              height: 70.h,
              width: 70.w,
              fit: BoxFit.cover,
<<<<<<< HEAD
              errorBuilder:
                  (_, __, ___) => Image.asset(
                    AppAssets.failedImage,
                    fit: BoxFit.fill,
                    height: 70.h,
                    width: 70.w,
                  ),
=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
            ),
          ),
          Expanded(
            child: Column(
<<<<<<< HEAD
              spacing: 5.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${context.getLocalization().name} $name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  '${context.getLocalization().character} $character',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                    fontFamily: 'Roboto',
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
=======
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name : $name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                      fontFamily: 'Roboto'),
                ),
                Text(
                  'Character: $character',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                      fontFamily: 'Roboto'),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
        ],
      ),
    );
  }
}
