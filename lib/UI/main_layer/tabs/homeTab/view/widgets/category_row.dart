import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie111/UI/main_layer/main_layer_screen.dart';
import 'package:movie111/UI/main_layer/provider/selected_cat_provider.dart';
<<<<<<< HEAD
import 'package:movie111/core/extentions/context_extention.dart';
=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
import 'package:movie111/core/utils/app_colors.dart';
import 'package:provider/provider.dart';

class CategoryRow extends StatelessWidget {
<<<<<<< HEAD
  const CategoryRow({super.key, required this.title});
=======
  const CategoryRow({
    super.key,
    required this.title,
  });
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
      padding: EdgeInsets.symmetric(horizontal: 20.w),
=======
      padding: const EdgeInsets.symmetric(horizontal: 20),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
<<<<<<< HEAD
              color: AppColors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto',
            ),
          ),
          InkWell(
            onTap: () {
              context.read<SelectedCatProvider>().selectCat(title);
=======
                color: AppColors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto'),
          ),
          InkWell(
            onTap: () {
              context.read<SelectedCatProvider>().selectCat(
                    title,
                  );
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
              currentIndex.value = 2;
            },
            child: Row(
              children: [
                Text(
<<<<<<< HEAD
                  context.getLocalization().seeMore,
                  style: TextStyle(
                    color: AppColors.amber,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(width: 4.w),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14.sp,
=======
                  "See More",
                  style: TextStyle(
                      color: AppColors.amber,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      fontFamily: 'Roboto'),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
                  color: AppColors.amber,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
