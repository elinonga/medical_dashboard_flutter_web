import 'package:flutter/material.dart';

class CircluarContainerIcon extends StatelessWidget {
  const CircluarContainerIcon(
      {Key? key, required this.rangi, required this.icon})
      : super(key: key);

  final Color rangi;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: rangi,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
