import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
