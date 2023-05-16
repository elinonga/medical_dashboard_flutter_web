import 'package:flutter/material.dart';

class LinksContainer extends StatelessWidget {
  const LinksContainer({
    Key? key,
    required this.label,
    required this.destination,
    required this.icon,
    required this.isActive,
  }) : super(key: key);

  final String label;
  final Widget destination;
  final bool isActive;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18.0,
        right: 18.0,
        bottom: 15.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: isActive ? Colors.purple : Colors.grey[200],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              Icon(
                icon,
                color: isActive ? Colors.white : Colors.black,
              ),
              const SizedBox(width: 10),
              Text(
                label,
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
