import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final apiKey = "352cc78febbae692329ba69d7631687f";

class MovieListing extends StatefulWidget {
  _MovieListingState createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  var movies;


  // Function to fetch movies from the API
  fetchMovies() async {
    // Getting JSON data
    var data = await MoviesProvider.getJson();

    setState(() {
      movies = data['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    // fetch movies
    fetchMovies();

    return Scaffold(
      body: SingleChildScrollView(
        child: movies != null
            ? Text("TMDB API Response\n $movies")
            : Text("Loading API Response"),
      ),
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
    var apiEndPoint = Uri.https(
        "api.themoviedb.org",
        "/3/discover/movie?api_key=$apiKey&sort_by=popularity.desc",
        {'q': '{http}'});
        
    final apiResponse = await http.get(apiEndPoint);

    //Parsing to JSON using dart:convert
    return json.decode(apiResponse.body); 
  }
}


void main() => runApp(

    /// A stateless widget that returns a MaterialApp widget.
    MovieApp());
