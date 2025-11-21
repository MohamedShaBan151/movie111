import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/model/movies_list_response.dart';
import 'package:movie111/UI/movieDetails/model/movie_details_api.dart';
import 'package:movie111/UI/movieDetails/viewModel/movie_suggestion_cubit_states.dart';

class MovieSuggestionCubit extends Cubit<MovieSuggestionCubitStates> {
  MovieSuggestionCubit() : super(MovieSuggestionInitialState());

  getMovieSuggestion(String movieId) async {
    emit(MovieSuggestionLoadingState());
    try {
      List<Movies>? movies = await MovieDetailsApi.getMovieSuggestions(movieId);
      if (movies == null || movies.isEmpty) {
        emit(MovieSuggestionSuccessEmptyListState());
      }
      emit(MovieSuggestionSuccessState(movies: movies!));
    } catch (e) {
      emit(MovieSuggestionFailureState(message: e.toString()));
    }
  }
}
