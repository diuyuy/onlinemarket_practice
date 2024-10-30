import 'package:flutter/material.dart';

class SuggestionInfo {
  static List<String> suggestionInfo = [
    'Adidas',
    'Nike',
    'Jordan',
    'Puma',
    'North Face'
  ];
  static List<String> suggestionSoldInfo = [
    '2,9000 원',
    '1,9000 원',
    '3,9900 원',
    '2,4000 원',
    '7,9000 원'
  ];
}

class Suggestion extends StatelessWidget {
  const Suggestion(
      {super.key,
      required this.suggestionTitle,
      required this.suggestions,
      required this.suggestionInfo,
      required this.suggestionSoldInfo});

  final String suggestionTitle;
  final List<String> suggestions;
  final List<String> suggestionInfo;
  final List<String> suggestionSoldInfo;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenWidth * 2 / 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              suggestionTitle,
              style: const TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: screenWidth / 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: screenWidth / 2,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenWidth * 3 / 8,
                          width: screenWidth / 4,
                          child: Image.asset(suggestions[index],
                              fit: BoxFit.fitHeight),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4.0, vertical: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(suggestionInfo[index]),
                              Text(suggestionSoldInfo[index]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
