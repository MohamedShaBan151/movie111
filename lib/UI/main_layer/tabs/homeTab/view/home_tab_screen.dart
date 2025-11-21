import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/model/movies_list_response.dart';
<<<<<<< HEAD
import 'package:movie111/UI/main_layer/tabs/homeTab/view_model/moviesListByGenerCubit/get_movie_list_cubit.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/view_model/moviesListByGenerCubit/get_movie_list_cubit_states.dart';
=======
import 'package:movie111/UI/main_layer/tabs/homeTab/modelView/moviesByDateCubit/movies_list_cubit.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/modelView/moviesByDateCubit/movies_list_cubit_states.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/modelView/moviesListByGenerCubit/movies_list_by_gener_cubit.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/modelView/moviesListByGenerCubit/movies_list_by_gener_cubit_states.dart';
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
import 'package:movie111/UI/main_layer/tabs/homeTab/view/widgets/available_now_section.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/view/widgets/category_movies_section.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/view/widgets/category_row.dart';
import 'package:movie111/core/utils/app_assets.dart';
import 'package:movie111/core/utils/app_colors.dart';
<<<<<<< HEAD
import 'package:movie111/core/utils/genre_translator.dart';
=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457

class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> geners = [
      'Action',
      'Adventure',
      'Animation',
      'Biography',
      'Comedy',
      'Crime',
      'Documentary',
      'Drama',
      'Family',
      'Fantasy',
      'Film-Noir',
      'Game-Show',
      'History',
      'Horror',
      'Music',
      'Musical',
      'Mystery',
      'News',
      'Reality-TV',
      'Romance',
      'Sci-Fi',
      'Short',
      'Sport',
      'Talk-Show',
      'Thriller',
      'War',
<<<<<<< HEAD
      'Western',
    ];
    List<String> selectedCategories = chooseRandomUniqueCategories(geners, 3);

    return BlocProvider(
      create: (context) => GetMoviesCubit(),
      child: BlocBuilder<GetMoviesCubit, GetMovieListCubitStates>(
        bloc:
            GetMoviesCubit()..getMoviesListByGener(
              selectedCategories[0],
              selectedCategories[1],
              selectedCategories[2],
            ),
        builder: (context, state) {
          switch (state) {
            case GetMovieListInitialState():
            case GetMovieListLoadingState():
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: CircularProgressIndicator(color: AppColors.amber),
                  ),
                ],
              );
            case GetMovieListFailureState():
              return Center(child: Text('${state.message}'));

            case GetMovieListEmptyListState():
              return Center(child: Text('No Movies'));
            case GetMovieListSuccessState():
              List<Movies> availableMowSection =
                  state.availableNowSection ?? [];
              final List<Movies> moviesSection1 = state.moviesSection1!;
              final List<Movies> moviesSection2 = state.moviesSection2!;
              final List<Movies> moviesSection3 = state.moviesSection3!;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        AvailableNowSection(movies: availableMowSection),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.0.w,
                              vertical: 20.h,
                            ),
                            child: Image.asset(
                              AppAssets.availableNow,
                              width: 267.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    Column(
                      children: [
                        CategoryRow(
                          title: selectedCategories[0].getGenreLocalizedName(
                            context,
                          ),
                        ),
                        CategoryMoviesSection(movies: moviesSection1),
                        CategoryRow(
                          title: selectedCategories[1].getGenreLocalizedName(
                            context,
                          ),
                        ),
                        CategoryMoviesSection(movies: moviesSection2),
                        CategoryRow(
                          title: selectedCategories[2].getGenreLocalizedName(
                            context,
                          ),
                        ),
                        CategoryMoviesSection(movies: moviesSection3),
                        SizedBox(height: 60.h),
                      ],
                    ),
                  ],
                ),
              );
          }
        },
=======
      'Western'
    ];
    List<String> selectedCategories = chooseRandomUniqueCategories(geners, 3);

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              BlocProvider(
                  create: (context) => MoviesListCubit()..getMoviesListByDate(),
                  child: BlocBuilder<MoviesListCubit, MoviesListCubitStates>(
                    builder: (context, state) {
                      switch (state) {
                        case MoviesListInitialState():
                        case MoviesListLoadingState():
                          return SizedBox(
                            height: 350.h,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: AppColors.amber,
                              ),
                            ),
                          );
                        case MoviesListFailureState():
                          return SizedBox(
                            height: 350.h,
                            child: Center(
                              child: Text('${state.message}'),
                            ),
                          );
                        case MoviesListSucessEmptyListState():
                          return SizedBox(
                            height: 350.h,
                            child: Center(
                              child: Text('No Movies'),
                            ),
                          );
                        case MoviesListSucessState():
                          final List<Movies> movies = state.movies!;
                          return AvailableNowSection(
                            movies: movies,
                          );
                      }
                    },
                  )),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 20),
                  child: Image.asset(
                    AppAssets.availableNow,
                    width: 267.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          BlocProvider(
            create: (context) => MoviesListByGenerCubit(),
            child: BlocBuilder<MoviesListByGenerCubit,
                    MoviesListByGenerCubitStates>(
                bloc: MoviesListByGenerCubit()
                  ..getMoviesListByGener(selectedCategories[0],
                      selectedCategories[1], selectedCategories[2]),
                builder: (context, state) {
                  switch (state) {
                    case MoviesListByGenerInitialState():
                    case MoviesListByGenerLoadingState():
                      return SizedBox(
                        height: 100,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: AppColors.amber,
                          ),
                        ),
                      );

                    case MoviesListByGenerFailureState():
                      return SizedBox(
                        height: 100,
                        child: Center(
                          child: Text('${state.message}'),
                        ),
                      );

                    case MoviesListByGenerSucessEmptyListState():
                      return SizedBox(
                        height: 100,
                        child: Center(
                          child: Text('No Movies'),
                        ),
                      );
                    case MoviesListByGenerSucessState():
                      final List<Movies> moviesSection1 = state.moviesSection1!;
                      final List<Movies> moviesSection2 = state.moviesSection2!;
                      final List<Movies> moviesSection3 = state.moviesSection3!;

                      return Column(
                        children: [
                          CategoryRow(title: selectedCategories[0]),
                          CategoryMoviesSection(
                              title: selectedCategories[0],
                              movies: moviesSection1),
                          CategoryRow(title: selectedCategories[1]),
                          CategoryMoviesSection(
                              title: selectedCategories[1],
                              movies: moviesSection2),
                          CategoryRow(title: selectedCategories[2]),
                          CategoryMoviesSection(
                              title: selectedCategories[2],
                              movies: moviesSection3),
                          const SizedBox(height: 60),
                        ],
                      );
                  }
                }),
          ),
        ],
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
      ),
    );
  }

  List<String> chooseRandomUniqueCategories(List<String> genres, int count) {
    genres.shuffle();
    return genres.take(count).toList();
  }
}
