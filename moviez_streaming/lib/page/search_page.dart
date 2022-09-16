import 'package:flutter/material.dart';
import 'package:moviez_streaming/common/constant.dart';
import 'package:moviez_streaming/model/movie_model.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchContent(),
            Container(
              margin: const EdgeInsets.only(
                top: 35,
                left: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Search Result',
                      style: TextStyle(
                        fontSize: 20,
                        color: blackColor,
                        fontWeight: bold,
                      ),
                      children: [
                        TextSpan(
                          text: ' (${listOfResult.length})',
                          style: TextStyle(
                            fontSize: 20,
                            color: blackColor,
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listOfResult.length,
                    itemBuilder: (BuildContext context, int index) {
                      MovieModel data = listOfResult[index];
                      return _searchResultContent(data);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _searchContent() {
    return Container(
      margin: const EdgeInsets.only(top: 39, left: 24, right: 24),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            fillColor: whiteColor,
            filled: true,
            hintText: 'Search',
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  _searchResultContent(MovieModel data) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              data.image!,
              width: 100,
              height: 127,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: semiBold,
                  color: blackColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                data.genre!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: light,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 20,
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
          ),
        ],
      ),
    );
  }
}
