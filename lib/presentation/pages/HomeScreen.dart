import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/bottom_appbar.dart';
import '../widget/gird_elevated_button.dart';
import '../widget/suggestion.dart';
import '../widget/text_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Online Marketplace',
          style: GoogleFonts.roboto(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bookmark),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextButtonLayout(),
            const Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.0,
                enlargeCenterPage: true,
              ),
              items: brand
                  .map(
                    (name) => Container(
                      padding: EdgeInsets.zero,
                      height: screenWidth,
                      width: screenWidth,
                      child: Image.asset(name, fit: BoxFit.fitWidth),
                    ),
                  )
                  .toList(),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            GridElevatedButton(imgAsset: category1),
            GridElevatedButton(imgAsset: category2),
            const SizedBox(height: 20),
            Suggestion(
              suggestionTitle: 'Outfit of the Day',
              suggestions: brand,
              suggestionInfo: SuggestionInfo.suggestionInfo,
              suggestionSoldInfo: SuggestionInfo.suggestionSoldInfo,
            ),
            Suggestion(
                suggestionTitle: "Today's Deals",
                suggestions: brand,
                suggestionInfo: SuggestionInfo.suggestionInfo,
                suggestionSoldInfo: SuggestionInfo.suggestionSoldInfo)
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomAppBar(),
    );
  }
}
