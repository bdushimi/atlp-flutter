import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final categoriesList = [
    'Top Recommended',
    'Near You',
    'Agency Recommended',
    'Most Popular'
  ];

  int currentCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentCategory = index;
            });
          },
          child: Container(
            child: Text(
              categoriesList[index],
              style: TextStyle(
                color: currentCategory == index
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).textTheme.bodyText1!.color,
                fontSize: currentCategory == index ? 18 : 16,
                fontWeight: currentCategory == index
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: currentCategory == index
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  width: currentCategory == index ? 2 : 0,
                ),
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
