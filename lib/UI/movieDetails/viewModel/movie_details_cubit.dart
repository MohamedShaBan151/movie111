<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
=======
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie111/UI/movieDetails/model/movie_details_api.dart';
import 'package:movie111/UI/movieDetails/model/movie_details_model.dart';
import 'package:movie111/UI/movieDetails/viewModel/movie_details_cubit_states.dart';

<<<<<<< HEAD
import '../../main_layer/tabs/profileTab/model/network/watch_list_and_history_movies_api.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsCubitStates> {
  MovieDetailsCubit() : super(MovieDetailsInitialState());
  bool isMarked = false;
  getMovieDetails(String movieId, BuildContext context) async {
    emit(MovieDetailsLoadingState());
    try {
      MovieDetails? movie = await MovieDetailsApi.getMovieDetails(movieId);
      isMarked = await WatchListAndHistoryMoviesApi.movieIsFav(
        movieId,
        context,
      );
      if (movie == null) {
        emit(MovieDetailsFailureState(message: 'something went wrong'));
      }
      emit(MovieDetailsSuccessState(movie: movie!, isMarked: isMarked));
=======
class MovieDetailsCubit extends Cubit<MovieDetailsCubitStates> {
  MovieDetailsCubit() : super(MovieDetailsInitialState());

  getMovieDetails(String movieId) async {
    emit(MovieDetailsLoadingState());
    try {
      MovieDetails? movie = await MovieDetailsApi.getMovieDetails(movieId);
      if (movie == null) {
        emit(MovieDetailsFailureState(message: 'something went wrong'));
      }
      emit(MovieDetailsSuccessState(movie: movie!));
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
    } catch (e) {
      emit(MovieDetailsFailureState(message: e.toString()));
    }
  }
}
