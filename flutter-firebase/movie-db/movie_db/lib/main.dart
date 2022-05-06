import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final apiKey = "352cc78febbae692329ba69d7631687f";

class MovieListing extends StatefulWidget {
  _MovieListingState createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  // List of movies to hold data from api
  List<MovieModel> movies = <MovieModel>[];

  // Function to fetch movies from the API
  fetchMovies() async {
    // Getting JSON data
    var data = await MoviesProvider.getJson();

    setState(() {
      // Holding data from server in generic list results
      List<dynamic> results = data['results'];

      // Iterating through results list and convert element to MovieModel
      results.forEach((element) {
        // adding MovieModel to movies list
        movies.add(MovieModel.fromJson(element));
      });
    });
  }

  @override
  void initState() {
    super.initState();

    // fetch movies
    // This method is called only once when the widget is built
    fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: movies == null ? 0 : movies.length,
          itemBuilder: (context, index) {
            return Padding(
              // Adding padding around the list row is
              padding: const EdgeInsets.all(8.0),

              // Displaying the title of the movie only in the row
              child: MovieTile(movies, index),
            );
          }),
    );
  }
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieListing(),
    );
  }
}

class MoviesProvider {
  static final String imagePathPrefix = "https://image.tmdb.org/t/p/w500/";

  static Future<Map> getJson() async {
    final apiEndPoint =
        "http://api.themoviedb.org/3/discover/movie?api_key=${apiKey}&sort_by=popularity.desc";
    final apiResponse = await http.get(apiEndPoint);

    //Parsing to JSON using dart:convert
    return json.decode(apiResponse.body);
  }
}

class MovieModel {
  //Class fields for mapping to JSON properties
  final int id;
  final num popularity;
  final int vote_count;
  final bool video;
  final String poster_path;
  final String backdrop_path;
  final bool adult;
  final String original_language;
  final String original_title;
  final List<dynamic> genre_ids;
  final String title;
  final num vote_average;
  final String overview;
  final String release_date;

  //Takes JSON formatted map, and returns `MovieModel` object.
  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        popularity = json['popularity'],
        vote_count = json['vote_count'],
        video = json['video'],
        poster_path = json['poster_path'],
        adult = json['adult'],
        original_language = json['original_language'],
        original_title = json['original_title'],
        genre_ids = json['genre_ids'],
        title = json['title'],
        vote_average = json['vote_average'],
        overview = json['overview'],
        release_date = json['release_date'],
        backdrop_path = json['backdrop_path'];
}

class MovieTile extends StatelessWidget {
  final List<MovieModel> movies;
  final index;

  const MovieTile(this.movies, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Padding around this widget
      padding: const EdgeInsets.all(8.0),
      // Use column to display all information vertically
      child: Column(
        children: <Widget>[
          movies[index].poster_path != null
              ? Container(
                  // Make the image's with to half of the given screen
                  width: MediaQuery.of(context).size.width / 2,

                  // Make the image's height to a quarter of the given screen
                  height: MediaQuery.of(context).size.height / 4,

                  // Making image box visually appealing by dropping shadow
                  decoration: BoxDecoration(
                    //Making image box slightly curved
                    borderRadius: BorderRadius.circular(10),

                    //Setting box's color to grey
                    color: Colors.grey,

                    // Decorating Image
                    image: DecorationImage(
                        image: NetworkImage(MoviesProvider.imagePathPrefix +
                            movies[index].poster_path),

                        // Image getting all available space
                        fit: BoxFit.cover),

                    // Dropping shadow
                    boxShadow: [
                      BoxShadow(
                        //grey colored shadow
                        color: Colors.grey,

                        // Applying softening effect
                        blurRadius: 3,

                        //move 1.0 to right (horizontal), and 3.0 to down (vertical)
                        offset: Offset(1.0, 3.0),
                      ),
                    ],
                  ),
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              movies[index].title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              movies[index].overview,
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Divider(
            color: Colors.grey.shade500,
          ),
        ],
      ),
    );
  }
}

void main() => runApp(

    /// A stateless widget that returns a MaterialApp widget.
    MovieApp());
