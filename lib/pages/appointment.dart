import 'package:flutter/material.dart';
import 'package:medical_dashboard/home.dart';
import 'package:medical_dashboard/pages/contact.dart';
import 'package:medical_dashboard/pages/message.dart';
import 'package:medical_dashboard/pages/profile.dart';
import 'package:medical_dashboard/pages/tasks.dart';
import 'package:medical_dashboard/widgets/container_links.dart';
import 'package:medical_dashboard/widgets/image.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({Key? key}) : super(key: key);

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<AppointmentsPage> {
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
                child: Column(
                  children: const [
                    SizedBox(height: 10),

                    // Logo Image
                    CustomImageContainer(
                      imgUrl: "assets/images/logo.png",
                    ),

                    // CustomLinks
                    SizedBox(height: 10),

                    // Overview
                    LinksContainer(
                      label: 'Home',
                      destination: HomePage(),
                      isActive: false,
                      icon: Icons.home,
                    ),
                    SizedBox(height: 10),

                    // Profile
                    LinksContainer(
                      label: 'Profile',
                      destination: ProfileScreen(),
                      isActive: false,
                      icon: Icons.person,
                    ),
                    SizedBox(height: 10),

                    // Tasks
                    LinksContainer(
                      label: 'Tasks',
                      destination: TasksScreen(),
                      isActive: false,
                      icon: Icons.check_circle,
                    ),
                    SizedBox(height: 10),

                    // Appointments
                    LinksContainer(
                      label: 'Appointments',
                      destination: AppointmentsPage(),
                      isActive: true,
                      icon: Icons.event_available,
                    ),
                    SizedBox(height: 10),

                    // Message
                    LinksContainer(
                      label: 'Messages',
                      destination: MessageScreen(),
                      isActive: false,
                      icon: Icons.message,
                    ),
                    SizedBox(height: 10),

                    // Contacts
                    LinksContainer(
                      label: 'Contacts',
                      destination: ContactPage(),
                      isActive: false,
                      icon: Icons.contacts,
                    ),
                    SizedBox(height: 10),
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
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        SizedBox(width: 10),

                        //Search
                        Text("Appointment"),

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
