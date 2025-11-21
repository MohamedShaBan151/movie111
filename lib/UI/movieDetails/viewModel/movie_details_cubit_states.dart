import 'package:movie111/UI/movieDetails/model/movie_details_model.dart';

sealed class MovieDetailsCubitStates {}

class MovieDetailsInitialState extends MovieDetailsCubitStates {}

class MovieDetailsLoadingState extends MovieDetailsCubitStates {}

class MovieDetailsFailureState extends MovieDetailsCubitStates {
  String? message;

  MovieDetailsFailureState({required this.message});
}

class MovieDetailsSuccessState extends MovieDetailsCubitStates {
  MovieDetails movie;
<<<<<<< HEAD
  bool isMarked;

  MovieDetailsSuccessState({required this.movie, required this.isMarked});
=======

  MovieDetailsSuccessState({required this.movie});
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
}
