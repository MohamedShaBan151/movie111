import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/app_assets.dart';

class WatchNowBanner extends StatelessWidget {
  const WatchNowBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
      padding: EdgeInsets.symmetric(horizontal: 24.w),
=======
      padding: EdgeInsets.symmetric(horizontal: 24.r),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      child: Image.asset(
        AppAssets.watchNow,
        width: 354.w,
        // height: 80,
        fit: BoxFit.contain,
      ),
    );
  }
}
