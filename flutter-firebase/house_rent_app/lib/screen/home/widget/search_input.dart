import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
          ),
          hintText: 'Search here ',
          prefixIcon: Container(
            padding: const EdgeInsets.all(15),
            child: const Icon(Icons.search, color: Colors.grey,),
          ),
          contentPadding: const EdgeInsets.all(2),
        ),
      ),
    );
  }
}