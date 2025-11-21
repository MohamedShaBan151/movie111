import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/model/movies_list_response.dart';
import 'package:movie111/UI/widgets/movie_card.dart';
import '../../../../../../core/utils/app_colors.dart';

class CategoryMoviesSection extends StatelessWidget {
<<<<<<< HEAD
  final List<Movies> movies;

  const CategoryMoviesSection({super.key, required this.movies});
=======
  final String title;
  final List<Movies> movies;

  const CategoryMoviesSection({
    super.key,
    required this.title,
    required this.movies,
  });
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
<<<<<<< HEAD
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
=======
        separatorBuilder: (context, index) => SizedBox(
          width: 16,
        ),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150.w,
                height: 220.h,
                child: MovieCard(
<<<<<<< HEAD
                  movieId: movie.imdbCode,
=======
                  movie: movie,
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
                  imagePath: movie.largeCoverImage ?? '',
                  rating: movie.rating,
                ),
              ),
              SizedBox(
                width: 130.w,
                child: Text(
                  movie.title ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
<<<<<<< HEAD
                    color: AppColors.white,
                    fontSize: 14.sp,
                    fontFamily: 'Roboto',
                  ),
=======
                      color: AppColors.white,
                      fontSize: 14,
                      fontFamily: 'Roboto'),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
