class MovieModel {
  String? image;
  String? title;
  String? genre;
  int? rating;
  MovieModel({
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
  });
}

List<MovieModel> listOfData = [
  MovieModel(
      image: 'assets/img-john.png',
      title: 'John Wick 4',
      genre: 'Action, Crime',
      rating: 5),
];
