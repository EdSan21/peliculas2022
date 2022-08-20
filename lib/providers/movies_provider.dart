import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:peliculas2022/helpers/debouncer.dart';
import 'package:peliculas2022/models/model.dart';
import 'package:peliculas2022/models/popular_response.dart' as popular;
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  String _apiKey = "d070e0fd80422b7ae7c2736a6da2b92e";
  String _baseUlr = "api.themoviedb.org";
  String _language = "es-ES";

  List<Result> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  Map<int, List<popular.Cast>> moviesCast = {};
  int _popularPage = 0;

  final debouncer = Debouncer(duration: const Duration(milliseconds: 500));
  final StreamController<List<Movie>> _suggestionStreamController =
      new StreamController.broadcast();
  Stream<List<Movie>> get suggestionStream =>
      _suggestionStreamController.stream;

  MoviesProvider() {
    this.getOnDisplayMovies();
  }
  Future<String> _getJsonData(String endpoint, [int page = 1]) async {
    //request http construccion de la solicitud
    final url = Uri.https(_baseUlr, endpoint,
        {'api_key': _apiKey, 'language': _language, 'page': '$page'});
    //ejecucion de la solicitud
    final response = await http.get(url);
    return response.body;
  }

  getOnDisplayMovies() async {
    //json
    final jsonData = await _getJsonData('3/movie/now_playing');
    //castearlo, o convertilo a mi modelo de datos
    final nowPlayingResponse = NowPlayingRespond.fromJson(jsonData);
    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    _popularPage++;
    final jsonData = await _getJsonData('3/movie/popular', _popularPage);
    //castearlo, o convertilo a mi modelo de datos
    final popularMovies = popular.PopularRespond.fromJson(jsonData);
    notifyListeners();
  }
}
