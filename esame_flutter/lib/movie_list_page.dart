import 'package:esame_flutter/data/movie.dart';
import 'package:esame_flutter/data/movie_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Movie List")
      ),
      body: ListView.builder(
        itemCount: MovieListMock.length,
        itemBuilder: (context, index) {
          final movie = MovieListMock[index];
          return ListTile(
            title: Text(movie.title),
          );
        }
      ),
    );
  }
}

