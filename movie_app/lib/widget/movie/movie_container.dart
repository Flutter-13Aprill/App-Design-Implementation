import 'package:flutter/material.dart';
import 'package:movie_app/screen/movie_screen.dart';
import 'package:movie_app/widget/movie/movie_card.dart';

class MovieContainer extends StatelessWidget {
  const MovieContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => MovieScreen(
                      img: "images/joker.jpg",
                      title: "Joker (2019)",
                      rate: 8.3,
                      synopsis:
                          "Arthur wears two masks -- the one he paints for his day job as a clown, and the guise he projects in a futile attempt to feel like he's part of the world around him. Isolated, bullied and disregarded by society, Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker.",
                    ),
              ),
            );
          },
          child: MovieCard(img: "images/movie1.jpg"),
        ),
        MovieCard(img: "images/movie2.jpg"),
        MovieCard(img: "images/movie3.jpg"),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => MovieScreen(
                      img: "images/bat.jpg",
                      title: "The Batman",
                      rate: 7.8,
                      synopsis:
                          "Batman ventures into Gotham City's underworld when a sadistic killer leaves behind a trail of cryptic clues. As the scale of the perpetrator's plans become clear, he must bring justice to the abuse of power and corruption that plagues the metropolis.",
                    ),
              ),
            );
          },
          child: MovieCard(img: "images/movie4.jpg"),
        ),
        MovieCard(img: "images/movie5.jpg"),
        MovieCard(img: "images/movie6.png"),
        MovieCard(img: "images/movie7.webp"),
        MovieCard(img: "images/movie8.jpg"),
        MovieCard(img: "images/movie9.webp"),
      ],
    );
  }
}
