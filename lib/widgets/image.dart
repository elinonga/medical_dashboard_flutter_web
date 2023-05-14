import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({Key? key, required this.imgUrl})
      : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(imgUrl),
      width: 200,
    );
  }
}
