import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_picker/navigation/routes.gr.dart';
import 'package:movie_picker/views/home/widgets/home_page_list_item.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomePageListItem(
            title: "Movies",
            backgroundImage: 'assets/home_page/movie_image.jpg',
            onTap: () {
              print("movies");
              context.router.push(MoviesRoute());
            },
          ),
          HomePageListItem(
            title: "Shows",
            backgroundImage: 'assets/home_page/tv_image.jpg',
            onTap: () {
              context.router.push(MoviesRoute());
            },
          ),
          HomePageListItem(
            title: "Books",
            backgroundImage: 'assets/home_page/book_image.jpeg',
            onTap: () {
              context.router.push(MoviesRoute());
            },
          ),
        ],
      ),
    );
  }
}
