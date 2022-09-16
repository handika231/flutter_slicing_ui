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

List<MovieModel> listOfResult = [
  MovieModel(
    image: 'assets/img-dark.png',
    title: 'The Dark II',
    genre: 'Horror',
    rating: 4,
  ),
  MovieModel(
    image: 'assets/img-knight.png',
    title: 'The Dark Knight',
    genre: 'Heroes',
    rating: 5,
  ),
  MovieModel(
    image: 'assets/img-tower.png',
    title: 'The Dark Tower',
    genre: 'Action',
    rating: 4,
  ),
];
