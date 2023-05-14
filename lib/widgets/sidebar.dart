import 'package:flutter/material.dart';
import 'package:medical_dashboard/widgets/container_links.dart';
import 'package:medical_dashboard/widgets/image.dart';
import 'package:medical_dashboard/pages/appointment.dart';
import 'package:medical_dashboard/pages/contact.dart';
import 'package:medical_dashboard/pages/message.dart';
import 'package:medical_dashboard/pages/overview.dart';
import 'package:medical_dashboard/pages/profile.dart';
import 'package:medical_dashboard/pages/tasks.dart';

class CustomSidebar extends StatefulWidget {
  const CustomSidebar({Key? key}) : super(key: key);

  @override
  State<CustomSidebar> createState() => _CustomSidebarState();
}

class _CustomSidebarState extends State<CustomSidebar> {
  int _activeIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _screens = [
    const OverviewScreen(),
    const ProfileScreen(),
    const TasksScreen(),
    const AppointmentsPage(),
    const MessageScreen(),
    const ContactPage(),
  ];

  void _onLinkTapped(int index) {
    setState(() {
      _activeIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: [
          const SizedBox(height: 10),

          // Logo Image
          const CustomImageContainer(
            imgUrl: "assets/images/logo.png",
          ),
          const SizedBox(height: 10),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: _screens,
              onPageChanged: (index) {
                setState(() {
                  _activeIndex = index;
                });
              },
            ),
          ),

          // Column of Links
          // Overview
          LinksContainer(
            rangi: Colors.purple[200]!,
            label: 'Overview',
            destination: OverviewScreen(),
            isActive: _activeIndex == 0,
            icon: Icons.home,
          ),

          // Profile
          LinksContainer(
            rangi: Colors.purple[200]!,
            label: 'Profile',
            destination: ProfileScreen(),
            isActive: _activeIndex == 1,
            icon: Icons.person,
          ),

          //Tasks
          LinksContainer(
            rangi: Colors.purple[200]!,
            label: 'Tasks',
            destination: TasksScreen(),
            isActive: _activeIndex == 2,
            icon: Icons.check_circle,
          ),

          // Appointment
          LinksContainer(
            rangi: Colors.purple[200]!,
            label: 'Appointment',
            destination: AppointmentsPage(),
            isActive: _activeIndex == 3,
            icon: Icons.event_available,
          ),

          // Message
          LinksContainer(
            rangi: Colors.purple[200]!,
            label: 'Message',
            destination: MessageScreen(),
            isActive: _activeIndex == 4,
            icon: Icons.message,
          ),

          // Contacts
          LinksContainer(
            rangi: Colors.purple[200]!,
            label: 'Contacts',
            destination: ContactPage(),
            isActive: _activeIndex == 5,
            icon: Icons.contacts,
          ),

          // SizedBox
        ],
      ),
    );
  }
}
