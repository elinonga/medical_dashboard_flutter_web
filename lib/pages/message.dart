import 'package:flutter/material.dart';
import 'package:medical_dashboard/home.dart';
import 'package:medical_dashboard/pages/appointment.dart';
import 'package:medical_dashboard/pages/contact.dart';
import 'package:medical_dashboard/pages/profile.dart';
import 'package:medical_dashboard/pages/tasks.dart';
import 'package:medical_dashboard/widgets/containers/container_links.dart';
import 'package:medical_dashboard/widgets/containers/section_containers_links.dart';
import 'package:medical_dashboard/widgets/image.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Row(
          children: [
            // Column 1 - Sidebar
            const Expanded(
              flex: 2, // Give 20% to the sidebar

              child: LinksContainerSection(
                  currentPage: 'Messages'), // Custom Sidebar with Links
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
                        Text("Mssages"),

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
