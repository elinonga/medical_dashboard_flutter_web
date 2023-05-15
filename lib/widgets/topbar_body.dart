import 'package:flutter/material.dart';

class TopBarBody extends StatelessWidget {
  const TopBarBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Notification
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                const Center(
                  child: Icon(Icons.notifications),
                ),
                // Red dot
                Positioned(
                  top: 0,
                  left: 15,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 30),

          // Avatar
          const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.pink,
            foregroundImage: AssetImage(
              "assets/images/avatars/black.jpeg",
            ),
          ),
          const SizedBox(width: 7),

          // Name
          const Text(
            'Dr David Mezza',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(width: 3),

          // Dropdown icon
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
