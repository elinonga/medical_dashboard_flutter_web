import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_dashboard/widgets/image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            // Column 1 - Sidebar
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                  ),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  children: const [
                    CustomImageContainer(
                      imgUrl: "assets/images/logo.png",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),

            // Column 2 - Body
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.blue,
                height: double.infinity,
                child: Column(
                  children: const [
                    Text("Body"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
