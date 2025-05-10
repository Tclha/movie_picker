import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_picker/home/widgets/home_page_list_item.dart';

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
      body: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomePageListItem(
            title: "Movies",
            backgroundImage: 'assets/home_page/movie_image.jpg',
          ),
          HomePageListItem(
            title: "Shows",
            backgroundImage: 'assets/home_page/tv_image.jpg',
          ),
          HomePageListItem(
            title: "Books",
            backgroundImage: 'assets/home_page/book_image.jpg',
          ),
        ],
      ),
    );
  }
}
