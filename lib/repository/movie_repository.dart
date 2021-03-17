import 'package:flutter_training/networking/api_base_helper.dart';
import 'package:flutter_training/models/movie_response.dart';
import 'package:flutter_training/apiKey.dart';

class MovieRepository {
  final String _apiKey = apiKey;

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Movie>> fetchMovieList() async {
    final response = await _helper.get("movie/popular?api_key=$_apiKey");
    return MovieResponse.fromJson(response).results;
  }
}