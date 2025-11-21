import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/model/movies_list_response.dart';
import 'package:movie111/UI/widgets/movie_card.dart';
<<<<<<< HEAD
import 'package:movie111/core/extentions/context_extention.dart';
=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
import 'package:movie111/core/utils/app_colors.dart';

class SimilarSectionView extends StatelessWidget {
  const SimilarSectionView({super.key, required this.suggestionMovies});

  final List<Movies> suggestionMovies;

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
=======
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
<<<<<<< HEAD
            context.getLocalization().similar,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Roboto',
              color: AppColors.white,
            ),
          ),
          SizedBox(height: 16.h),
=======
            'Similar',
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
                color: AppColors.white),
          ),
          SizedBox(
            height: 16.h,
          ),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
          GridView.builder(
            padding: EdgeInsets.all(0),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 16.h,
            ),
<<<<<<< HEAD
            itemBuilder:
                (context, index) => MovieCard(
                  movieId: suggestionMovies[index].imdbCode,
                  imagePath: suggestionMovies[index].mediumCoverImage ?? '',
                  rating: suggestionMovies[index].rating,
                ),
            itemCount: suggestionMovies.length,
          ),
=======
            itemBuilder: (context, index) => MovieCard(
              movie: suggestionMovies[index],
              imagePath: suggestionMovies[index].mediumCoverImage ?? '',
              rating: suggestionMovies[index].rating,
            ),
            itemCount: suggestionMovies.length,
          )
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
        ],
      ),
    );
  }
}
