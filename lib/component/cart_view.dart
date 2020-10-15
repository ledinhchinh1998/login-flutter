import 'package:flutter/material.dart';

class IconSection extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color colorBg;
  const IconSection({Key key, this.imagePath, this.title, this.colorBg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            color: colorBg,
            image: DecorationImage(
              image: AssetImage(imagePath),
              scale: 0.5,
              fit: BoxFit.fitWidth,
            ),
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        Text(
          title,
          style: TextStyle(
              color: colorBg,
              fontSize: 11,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}