import 'package:flutter/material.dart';
import 'package:medical_dashboard/home.dart';
import 'package:medical_dashboard/widgets/containers/container_links.dart';
import 'package:medical_dashboard/widgets/image.dart';
import 'package:medical_dashboard/pages/appointment.dart';
import 'package:medical_dashboard/pages/contact.dart';
import 'package:medical_dashboard/pages/message.dart';
import 'package:medical_dashboard/pages/profile.dart';
import 'package:medical_dashboard/pages/tasks.dart';

class LinksContainerSection extends StatelessWidget {
  const LinksContainerSection({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  final String currentPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),

        // Logo Image
        CustomImageContainer(
          imgUrl: "assets/images/logo.png",
        ),

        // CustomLinks
        SizedBox(height: 25),

        // Overview
        LinksContainer(
          label: 'Home',
          destination: HomePage(),
          isActive: currentPage == 'Home',
          icon: Icons.home,
        ),

        // Profile
        LinksContainer(
          label: 'Profile',
          destination: ProfileScreen(),
          isActive: currentPage == 'Profile',
          icon: Icons.person,
        ),

        // Tasks
        LinksContainer(
          label: 'Tasks',
          destination: TasksScreen(),
          isActive: currentPage == 'Tasks',
          icon: Icons.check_circle,
        ),

        // Appointments
        LinksContainer(
          label: 'Appointments',
          destination: AppointmentsPage(),
          isActive: currentPage == 'Appointments',
          icon: Icons.event_available,
        ),

        // Message
        LinksContainer(
          label: 'Messages',
          destination: MessageScreen(),
          isActive: currentPage == 'Messages',
          icon: Icons.message,
        ),

        // Contacts
        LinksContainer(
          label: 'Contacts',
          destination: ContactPage(),
          isActive: currentPage == 'Contacts',
          icon: Icons.contacts,
        ),

        SizedBox(height: 10),
      ],
    );
  }
}
