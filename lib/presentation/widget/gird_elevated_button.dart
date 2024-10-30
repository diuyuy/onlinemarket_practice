import 'package:flutter/material.dart';

List<String> brand = [
  'assets/img/logo/adidas.png.jpg',
  'assets/img/logo/nike2.png',
  'assets/img/logo/jordan.png',
  'assets/img/logo/puma.png',
  'assets/img/logo/northface.png',
];

List<String> category1 = [
  '남성',
  '여성',
  '키드',
  '상의',
  '하의',
];

List<String> category2 = [
  '신발',
  '패딩',
  '모자',
  '양말',
  '장갑',
];

class GridElevatedButton extends StatelessWidget {
  const GridElevatedButton({super.key, required this.imgAsset});
  final List<String> imgAsset;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: imgAsset
            .map(
              (name) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  overlayColor: Colors.grey.withOpacity(0.2),
                  padding: EdgeInsets.zero,
                  fixedSize: Size(screenWidth / 7, screenWidth / 7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      side: const BorderSide(color: Colors.grey, width: 1.5)),
                ),
                onPressed: () {},
                child: Text(name, style: TextStyle(color: Colors.black)),
              ),
            )
            .toList(),
      ),
    );
  }
}
