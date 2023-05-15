import 'package:flutter/material.dart';
import 'package:medical_dashboard/widgets/circle_container_icon.dart';

class ProfileContainers extends StatelessWidget {
  const ProfileContainers({
    Key? key,
    required this.label1,
    required this.label2,
  }) : super(key: key);

  final String label1;
  final String label2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      child: Column(children: [
        const SizedBox(height: 5),
        const CircluarContainerIcon(
          rangi: Colors.blue,
          icon: Icons.person,
        ),
        const SizedBox(height: 20),
        Text(
          label1,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label2,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 10),
      ]),
    );
  }
}
