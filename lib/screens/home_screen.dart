import 'package:flutter/material.dart';
import 'package:peliculas2022/providers/movies_provider.dart';
import 'package:peliculas2022/widgets/card_swiper.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("Peliculas en cines"),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.search_off_outlined),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [CardSwiper()],
          ),
        ));
  }
}