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
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 243, 243),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),

      // Column of Logo + Links
      child: Column(
        children: [
          const SizedBox(height: 20),

          // Logo Image
          const CustomImageContainer(
            imgUrl: "assets/images/logo.png",
          ),

          // CustomLinks
          const SizedBox(height: 25),

          // Overview
          LinksContainer(
            label: 'Home',
            destination: const HomePage(),
            isActive: currentPage == 'Home',
            icon: Icons.home,
          ),

          // Profile
          LinksContainer(
            label: 'Profile',
            destination: const ProfileScreen(),
            isActive: currentPage == 'Profile',
            icon: Icons.person,
          ),

          // Tasks
          LinksContainer(
            label: 'Tasks',
            destination: const TasksScreen(),
            isActive: currentPage == 'Tasks',
            icon: Icons.check_circle,
          ),

          // Appointments
          LinksContainer(
            label: 'Appointments',
            destination: const AppointmentsPage(),
            isActive: currentPage == 'Appointments',
            icon: Icons.event_available,
          ),

          // Message
          LinksContainer(
            label: 'Messages',
            destination: const MessageScreen(),
            isActive: currentPage == 'Messages',
            icon: Icons.message,
          ),

          // Contacts
          LinksContainer(
            label: 'Contacts',
            destination: const ContactPage(),
            isActive: currentPage == 'Contacts',
            icon: Icons.contacts,
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
