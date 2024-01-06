import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/Home/data/models/movie_model.dart';

import '../../../../../core/database/cache/api/api_services.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit of(context) => BlocProvider.of(context);
  List<BaseMovie> nowPlayingMoviesList = [];
  List<BaseMovie> trendingMoviesList = [];
  List<BaseMovie> comingSoonMoviesList = [];

  Future<void> getNewPlayingMovie() async {
    emit(NowPlayingMovieLoading());

    try {
      final response = await ApiService(Dio()).get(endPoint: "now_playing");

      List<dynamic> nowPlayingMovies = response.data["results"];

      for (var item in nowPlayingMovies) {
        nowPlayingMoviesList.add(BaseMovie.fromJson(item));
      }

      emit(NowPlayingMovieSuccess());
    } catch (e) {
      emit(NowPlayingMovieFailed());
    }
  }

  Future<void> getTrendingMovie() async {
    emit(TrendingMovieLoading());

    try {
      final response = await ApiService(Dio()).get(endPoint: "top_rated");

      List<dynamic> trendingMovies = response.data["results"];

      for (var item in trendingMovies) {
        trendingMoviesList.add(BaseMovie.fromJson(item));
      }

      emit(TrendingMovieSuccess());
    } catch (e) {
      emit(TrendingMovieFailed());
    }
  }

  Future<void> getCommingSoonMovie() async {
    emit(ComingSoonMovieLoading());

    try {
      final response = await ApiService(Dio()).get(endPoint: "now_playing");

      List<dynamic> comingSoonMovies = response.data["results"];

      for (var item in comingSoonMovies) {
        comingSoonMoviesList.add(BaseMovie.fromJson(item));
      }

      emit(ComingSoonMovieSuccess());
    } catch (e) {
      emit(ComingSoonMovieFailed());
    }
  }
}
