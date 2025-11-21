import 'dart:convert';

<<<<<<< HEAD
import 'package:http/http.dart' as http;
import 'package:movie111/UI/main_layer/tabs/homeTab/model/movies_list_response.dart';
import 'package:movie111/UI/movieDetails/model/movie_details_model.dart';
import 'package:movie111/core/utils/app_constants.dart';
import 'package:movie111/core/utils/app_endpoints.dart';
=======
import 'package:flutter/material.dart';
import 'package:movie111/UI/main_layer/tabs/homeTab/model/movies_list_response.dart';
import 'package:movie111/UI/movieDetails/model/movie_added_to_fav_response.dart';
import 'package:movie111/UI/movieDetails/model/movie_details_model.dart';
import 'package:movie111/UI/auth/providers/token_provider.dart';
import 'package:movie111/core/utils/app_constants.dart';
import 'package:movie111/core/utils/app_endpoints.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457

class MovieDetailsApi {
  static Future<MovieDetails?> getMovieDetails(String movieId) async {
    Uri uri = Uri.https(
<<<<<<< HEAD
      AppConstants.moviesBaseUrl,
      AppEndpoints.movieDetailsEndpoint,
      {'imdb_id': movieId, 'with_images': 'true', 'with_cast': 'true'},
    );
=======
        AppConstants.moviesBaseUrl,
        AppEndpoints.movieDetailsEndpoint,
        {'imdb_id': movieId, 'with_images': 'true', 'with_cast': 'true'});
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
    var response = await http.get(uri);
    var jsonResponse = jsonDecode(response.body);
    MovieDetailsModel data = MovieDetailsModel.fromJson(jsonResponse);
    if (data.status == 'ok' && response.statusCode == 200) {
      return data.data?.movie;
    } else {
      throw data.statusMessage ?? 'Something went wrong';
    }
  }

  static Future<List<Movies>?> getMovieSuggestions(String movieId) async {
    Uri uri = Uri.https(
<<<<<<< HEAD
      AppConstants.moviesBaseUrl,
      AppEndpoints.movieSuggestionsEndpoint,
      {'movie_id': movieId},
    );
=======
        AppConstants.moviesBaseUrl, AppEndpoints.movieSuggestionsEndpoint, {
      'movie_id': movieId,
    });
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
    var response = await http.get(uri);
    var jsonResponse = jsonDecode(response.body);
    MoviesListResponse data = MoviesListResponse.fromJson(jsonResponse);
    if (data.status == 'ok' && response.statusCode == 200) {
      return data.data?.movies;
    } else {
      throw data.statusMessage ?? 'Something went wrong';
    }
  }
<<<<<<< HEAD
=======

  static Future<String> addMovieToFav(
      Movies movie, BuildContext context) async {
    final String? token = context.read<TokenProvider>().token;

    Uri uri = Uri.https(
        AppConstants.moviesAddDeleteBaseUrl, AppEndpoints.movieFavAddEndpoint);
    final response = await http.post(
      uri,
      body: jsonEncode({
        "movieId": movie.id.toString(),
        "name": movie.title,
        "rating": (movie.rating ?? 0),
        "imageURL": movie.largeCoverImage,
        "year": movie.year.toString()
      }),
      headers: {
        "Content-Type": "application/json",
        if (token != null) "Authorization": "Bearer $token",
      },
    );
    var jsonResponse = jsonDecode(response.body);
    MovieAddedToFavResponse responseMessage =
        MovieAddedToFavResponse.fromJson(jsonResponse);
    if (response.statusCode == 201 || response.statusCode == 409) {
      return responseMessage.message ?? 'something went wrong';
    } else {
      throw responseMessage.message ?? 'something Wrong';
    }
  }

  static Future<String> removeMovieFromFav(
      Movies movie, BuildContext context) async {
    final String? token = context.read<TokenProvider>().token;

    Uri uri = Uri.https(AppConstants.moviesAddDeleteBaseUrl,
        '${AppEndpoints.movieFavDeleteEndpoint}${movie.id}');
    final response = await http.delete(
      uri,
      headers: {
        "Content-Type": "application/json",
        if (token != null) "Authorization": "Bearer $token",
      },
    );
    var jsonResponse = jsonDecode(response.body);
    MovieAddedToFavResponse responseMessage =
        MovieAddedToFavResponse.fromJson(jsonResponse);
    if (response.statusCode == 200 || response.statusCode == 404) {
      return responseMessage.message ?? 'something went wrong';
    } else {
      throw responseMessage.message ?? 'something Wrong';
    }
  }
>>>>>>> 26fadd5efa8e9b4130b48e61d291de919d11e457
}
