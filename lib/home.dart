import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_dashboard/widgets/container_links.dart';
import 'package:medical_dashboard/widgets/image.dart';
import 'package:medical_dashboard/widgets/search.dart';
import 'package:medical_dashboard/widgets/sidebar.dart';
import 'package:medical_dashboard/widgets/topbar_body.dart';

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

            // Expanded to get column sizes
            const Expanded(
              flex: 2, // Give 20% to the sidebar

              // Custom Sidebar with Links
              child: CustomSidebar(),
            ),
            const SizedBox(width: 10),

            // Column 2 - Body
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.blue,
                height: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        SizedBox(width: 10),

                        //Search
                        SearchBar(),

                        // Row of Notification + Picture(Avatar) + Name + Dropdown Icon
                        TopBarBody(),

                        SizedBox(width: 10),
                      ],
                    )
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
