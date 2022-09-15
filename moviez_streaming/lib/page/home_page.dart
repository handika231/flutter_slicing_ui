import 'package:flutter/material.dart';
import 'package:moviez_streaming/common/constant.dart';
import 'package:moviez_streaming/model/movie_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _headerContent(),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                left: 24,
              ),
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfTopMovies.length,
                itemBuilder: (BuildContext context, int index) {
                  MovieModel data = listOfTopMovies[index];
                  return _topMoviesContent(data);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                left: 24,
              ),
              child: Text(
                'From Disney',
                style: TextStyle(
                  fontSize: 24,
                  color: blackColor,
                  fontWeight: bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _headerContent() {
    return Container(
      margin: const EdgeInsets.only(
        top: 29,
        left: 24,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Moviez',
                style: TextStyle(
                  color: blackColor,
                  fontSize: 28,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Watch much easier',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 16,
                  fontWeight: light,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }

  _topMoviesContent(MovieModel data) {
    return Container(
      width: 300,
      height: 280,
      margin: const EdgeInsets.only(right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              '${data.image}',
              width: 300,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${data.title}',
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '${data.genre}',
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
              Row(
                children: [1, 2, 3, 4, 5].map((index) {
                  if (index <= data.rating!) {
                    return Icon(
                      Icons.star,
                      color: yellowColor,
                    );
                  } else {
                    return Icon(
                      Icons.star,
                      color: lightGrey,
                    );
                  }
                }).toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
