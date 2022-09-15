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

List<MovieModel> listOfTopMovies = [
  MovieModel(
    image: 'assets/img-john.png',
    title: 'John Wick 4',
    genre: 'Action, Crime',
    rating: 5,
  ),
  MovieModel(
    image: 'assets/img-bohemain.png',
    title: 'Bohemian',
    genre: 'Documentary',
    rating: 3,
  ),
];

List<MovieModel> listFromDisney = [
  MovieModel(
    image: 'assets/img-mulan.png',
    title: 'Mulan Session',
    genre: 'History, War',
    rating: 3,
  ),
  MovieModel(
    image: 'assets/img-beauty.png',
    title: 'Beauty & Beast',
    genre: 'Sci-Fiction',
    rating: 5,
  ),
];
