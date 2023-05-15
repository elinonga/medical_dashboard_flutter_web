import 'package:flutter/material.dart';
import 'package:medical_dashboard/pages/appointment.dart';
import 'package:medical_dashboard/pages/contact.dart';
import 'package:medical_dashboard/pages/message.dart';
import 'package:medical_dashboard/pages/profile.dart';
import 'package:medical_dashboard/pages/tasks.dart';
import 'package:medical_dashboard/widgets/circle_container_icon.dart';
import 'package:medical_dashboard/widgets/container_links.dart';
import 'package:medical_dashboard/widgets/image.dart';
import 'package:medical_dashboard/widgets/profile_conatiners.dart';
import 'package:medical_dashboard/widgets/search.dart';
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
                      isActive: true,
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
                      isActive: false,
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
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),

                          // Row (SearchBar + Row of Profile)
                          Row(
                            children: const [
                              SizedBox(width: 10),

                              //Search
                              SearchBar(),

                              // Row of Notification + Picture(Avatar) + Name + Dropdown Icon
                              TopBarBody(),

                              SizedBox(width: 10),
                            ],
                          ),
                          const SizedBox(height: 20),

                          // A Row of columns
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 1st column
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    height: 500,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        // Row 1
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 12.0,
                                            right: 12.0,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Patient History",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              DropdownButton(
                                                value: "Monthly",
                                                items: [
                                                  "Monthly",
                                                  "Weekly",
                                                  "Daily"
                                                ]
                                                    .map((item) =>
                                                        DropdownMenuItem(
                                                          value: item,
                                                          child: Text(item),
                                                        ))
                                                    .toList(),
                                                onChanged: (value) {},
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Row 2
                                        Positioned(
                                          top: 50,
                                          left: 0,
                                          right: 0,
                                          bottom: 100,
                                          child: Container(
                                            padding: EdgeInsets.all(16),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    children: const [
                                                      Expanded(
                                                        child: Card(
                                                          child: Center(
                                                            child:
                                                                Text("Card 1"),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Card(
                                                          child: Center(
                                                            child:
                                                                Text("Card 2"),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Card(
                                                          child: Center(
                                                            child:
                                                                Text("Card 3"),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                const Expanded(
                                                  child: Card(
                                                    child: Center(
                                                      child: Text(
                                                          "Card with graph"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        // Row 3
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            height: 100,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: const [
                                                Expanded(
                                                  child: Card(
                                                    child: Center(
                                                      child:
                                                          Text("Consultation"),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 16),
                                                Expanded(
                                                  child: Card(
                                                    child: Center(
                                                      child:
                                                          Text("In Progress"),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 16),
                                                Expanded(
                                                  child: Card(
                                                    child: Center(
                                                      child: Text("In Review"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),

                                // 2nd column
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: 300,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Column(children: [
                                      SizedBox(height: 5),

                                      // Avatar
                                      CircleAvatar(
                                        radius: 50,
                                        backgroundColor: Colors.pink,
                                        foregroundImage: AssetImage(
                                          "assets/images/avatars/black.jpeg",
                                        ),
                                      ),
                                      SizedBox(height: 15),

                                      // Doctor's Name
                                      Text(
                                        'Dr David Mezza',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 5),

                                      // Doctor's speciality
                                      Text(
                                        'Cardiologist Specialist',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(height: 20),

                                      // 3 cards of (Workload + Available + Emails)
                                      Row(
                                        children: const [
                                          SizedBox(width: 10),
                                          ProfileContainers(
                                            label1: "Workload",
                                            label2: "16 Patients",
                                          ),
                                          SizedBox(width: 5),
                                          ProfileContainers(
                                            label1: "Available",
                                            label2: "17/60 slots",
                                          ),
                                          SizedBox(width: 5),
                                          ProfileContainers(
                                            label1: "Email",
                                            label2: "10",
                                          ),
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Another Row
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
