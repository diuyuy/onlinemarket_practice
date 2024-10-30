import 'package:flutter/material.dart';

class TextButtonLayout extends StatelessWidget {
  const TextButtonLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          TextButton(
              style: TextButton.styleFrom(
                  overlayColor: Colors.grey.withOpacity(0.2)),
              onPressed: () {},
              child: Text('Adidas', style: TextStyle(color: Colors.black))),
          TextButton(
              style: TextButton.styleFrom(
                  overlayColor: Colors.grey.withOpacity(0.2)),
              onPressed: () {},
              child: Text('Nike', style: TextStyle(color: Colors.black))),
          TextButton(
              style: TextButton.styleFrom(
                  overlayColor: Colors.grey.withOpacity(0.2)),
              onPressed: () {},
              child: Text('Jordan', style: TextStyle(color: Colors.black))),
          TextButton(
              style: TextButton.styleFrom(
                  overlayColor: Colors.grey.withOpacity(0.2)),
              onPressed: () {},
              child: Text('Puma', style: TextStyle(color: Colors.black))),
          TextButton(
              style: TextButton.styleFrom(
                  overlayColor: Colors.grey.withOpacity(0.2)),
              onPressed: () {},
              child: Text('North Face', style: TextStyle(color: Colors.black))),
        ],
      ),
    );
  }
}
