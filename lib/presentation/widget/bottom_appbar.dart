import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.bars, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.search, color: Colors.black)),
          IconButton(
              onPressed: () {
                context.goNamed('home');
              },
              icon: const Icon(Icons.home_filled, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.heart, color: Colors.black)),
          IconButton(
              onPressed: () {
                context.goNamed('loginPage');
              },
              icon: const Icon(Icons.account_circle, color: Colors.black)),
        ],
      ),
    );
  }
}
