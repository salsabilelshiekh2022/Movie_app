import 'package:equatable/equatable.dart';

class BaseMovie extends Equatable {
  final int id;
  final String title;
  final String posterImg;
  final String overView;
  final double voteAverage;

  const BaseMovie(
      {required this.id,
      required this.title,
      required this.posterImg,
      required this.overView,
      required this.voteAverage});

  factory BaseMovie.fromJson(Map<String, dynamic> json) {
    return BaseMovie(
      id: json["id"],
      title: json["title"],
      posterImg: json["backdrop_path"],
      overView: json["overview"],
      voteAverage: json["vote_average"],
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        posterImg,
        overView,
        voteAverage,
      ];
}
