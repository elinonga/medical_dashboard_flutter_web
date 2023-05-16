import 'package:flutter/material.dart';
import 'package:medical_dashboard/widgets/circle_container_icon.dart';

class RowCardGraph extends StatelessWidget {
  const RowCardGraph({
    Key? key,
    required this.label1,
    required this.label2,
  }) : super(key: key);

  final String label1;
  final String label2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 244, 243, 243),
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            const CircluarContainerIcon(
              rangi: Colors.purple,
              icon: Icons.person,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(label1),
                  Text(label2),
                ],
              ),
            ),
            SizedBox(width: 15),
            const Icon(Icons.message),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
