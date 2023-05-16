import 'package:flutter/material.dart';
import 'package:medical_dashboard/home.dart';
import 'package:medical_dashboard/pages/appointment.dart';
import 'package:medical_dashboard/pages/contact.dart';
import 'package:medical_dashboard/pages/message.dart';
import 'package:medical_dashboard/pages/tasks.dart';
import 'package:medical_dashboard/widgets/containers/container_links.dart';
import 'package:medical_dashboard/widgets/containers/section_containers_links.dart';
import 'package:medical_dashboard/widgets/image.dart';
import 'package:medical_dashboard/widgets/sidebar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            Expanded(
              flex: 2, // Give 20% to the sidebar

              // Custom Sidebar with Links
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

                // Column of Logo + Links
                child: const LinksContainerSection(currentPage: 'Profile'),
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
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        SizedBox(width: 10),

                        //Search
                        Text("My Profile"),

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
