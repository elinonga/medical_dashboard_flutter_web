import 'package:flutter/material.dart';
import 'package:medical_dashboard/widgets/circle_container_icon.dart';
import 'package:medical_dashboard/widgets/containers/section_containers_links.dart';
import 'package:medical_dashboard/widgets/profile_conatiners.dart';
import 'package:medical_dashboard/widgets/rows/card_row_graph.dart';
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
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Row(
          children: [
            // Column 1 - Sidebar
            const Expanded(
              flex: 2, // Give 20% to the sidebar

              child: LinksContainerSection(
                  currentPage: 'Home'), // Custom Sidebar with Links
            ),

            const SizedBox(width: 10),

            // Column 2 - Body
            Expanded(
              flex: 8,
              child: Container(
                height: double.infinity,
                color: Color.fromARGB(255, 234, 232, 232),
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
                            padding: const EdgeInsets.only(
                              left: 12.0,
                              right: 12.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 1st column - Patient's History
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
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Incoming Patient History",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Container(
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(8.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 8.0,
                                                  ),
                                                  child: DropdownButton(
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
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Divider
                                        const Positioned(
                                          top: 55,
                                          left: 0,
                                          right: 0,
                                          child: Divider(
                                            height: 1,
                                            thickness: 0.5,
                                            color: Colors.grey,
                                          ),
                                        ),

                                        // Row 2
                                        Positioned(
                                          top: 50,
                                          left: 0,
                                          right: 0,
                                          bottom: 100,
                                          child: Container(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    children: const [
                                                      RowCardGraph(
                                                        label1: "New Patient",
                                                        label2: "560",
                                                      ),
                                                      RowCardGraph(
                                                        label1: "Inject",
                                                        label2: "300",
                                                      ),
                                                      RowCardGraph(
                                                        label1: "Surgery",
                                                        label2: "200",
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
                                                SizedBox(width: 12),
                                                Expanded(
                                                  child: Card(
                                                    child: Center(
                                                      child:
                                                          Text("Consultation"),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Expanded(
                                                  child: Card(
                                                    child: Center(
                                                      child:
                                                          Text("In Progress"),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Expanded(
                                                  child: Card(
                                                    child: Center(
                                                      child: Text("In Review"),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                              ],
                                            ),
                                          ),
                                        ),

                                        //
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),

                                // 2nd column - Profile Card
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

                                //
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )

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
