<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
=======
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/model/movies_list_response.dart';
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
import 'package:movie111/UI/movieDetails/view/movie_details_screen.dart';
import 'package:movie111/core/utils/app_assets.dart';

import '../../core/utils/app_colors.dart';
<<<<<<< HEAD
=======
import '../main_layer/tabs/profileTab/models/get_favourite_movies_response_model.dart';
import '../main_layer/tabs/profileTab/models/movie_details_args.dart';
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457

class MovieCard extends StatelessWidget {
  final String imagePath;
  final double? rating;
<<<<<<< HEAD
  final String? movieId;
=======
  final Movies? movie;
  final FavouriteMovie? favouriteMovie;
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457

  const MovieCard({
    super.key,
    required this.imagePath,
    this.rating,
<<<<<<< HEAD
    required this.movieId,
=======
    this.movie,
    this.favouriteMovie,
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
<<<<<<< HEAD
      onTap: () async {
        Navigator.of(
          context,
        ).pushNamed(MovieDetailsScreen.routeName, arguments: movieId);
=======
      onTap: () {
        Navigator.of(context).pushNamed(
          MovieDetailsScreen.routeName,
          arguments: MovieDetailsArgs(
            movie: movie,
            favourite: favouriteMovie,
          ),
        );
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                imagePath,
                fit: BoxFit.cover,
<<<<<<< HEAD
                errorBuilder:
                    (_, __, ___) => Image.asset(
                      AppAssets.failedImage,
                      fit: BoxFit.fill,
                      height: 400.h,
                      width: 300.w,
                    ),
=======
                errorBuilder: (_, __, ___) => Image.asset(
                  AppAssets.failedImage,
                  fit: BoxFit.fill,
                  height: 400.h,
                  width: 300.w,
                ),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                    child: CircularProgressIndicator(color: AppColors.amber),
                  );
                },
              ),
<<<<<<< HEAD
              rating == null || rating == 0
                  ? SizedBox.shrink()
                  : Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          Text(
                            (rating ?? 0).toStringAsFixed(1),
                            style: const TextStyle(
                              color: AppColors.amber,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 3),
                          const Icon(
                            Icons.star,
                            color: AppColors.amber,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ),
=======
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: rating == null
                      ? SizedBox()
                      : Row(
                          children: [
                            Text(
                              (rating ?? 0).toStringAsFixed(1),
                              style: const TextStyle(
                                color: AppColors.amber,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 3),
                            const Icon(
                              Icons.star,
                              color: AppColors.amber,
                              size: 14,
                            ),
                          ],
                        ),
                ),
              ),
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
            ],
          ),
        ),
      ),
    );
  }
}
