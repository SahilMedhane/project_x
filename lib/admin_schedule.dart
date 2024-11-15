import 'package:flutter/material.dart';
import 'package:login_ui/admin_homepage.dart';
import 'package:login_ui/project_details.dart';
//import 'package:google_fonts/google_fonts.dart';

class AdminSchedule extends StatefulWidget {
  const AdminSchedule({super.key});

  @override
  State createState() => _AdminScheduleState();
}

class _AdminScheduleState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// TITLE

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AdminHomePage()),
              );
            },
            child: Icon(Icons.arrow_back, color: Colors.black)),
        title: const Text(
          "Schedule",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                /// DATE

                const Text(
                  "29",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),

                const SizedBox(
                  width: 10,
                ),

                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// DAY

                    Text(
                      "Tue",
                      style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),

                    /// MONTH YEAR
                    Text(
                      "OCT 2024",
                      style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),

                const Spacer(),

                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF1E3A8A),
                  ),
                  child: const Center(
                    child: Text(
                      "Today",
                      style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            /// hORIZONTAL DATES
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 90,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(130, 112, 114, 235),
                                  const Color.fromARGB(123, 155, 39, 176),
                                  const Color.fromARGB(127, 155, 39, 176),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              //color: const Color.fromRGBO(57, 62, 70, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "T",
                                  style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                Text(
                                  "$index",
                                  style: const TextStyle(
                                      fontSize: 35,
                                      //fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  );
                },
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            /// TIME  PROJECT  SORT

            const Row(
              children: [
                Text(
                  "Time",
                  style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Projects",
                  style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Spacer(),
                Icon(
                  Icons.sort_rounded,
                  color: Colors.black,
                ),
              ],
            ),

            const SizedBox(
              height: 15,
            ),

            /// VERTICAL TIME AND PROJECT CARDS

            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "11:35",
                              style: TextStyle(
                                  fontSize: 16,
                                  //fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProjectDetails()),
                                );
                              },
                              child: Container(
                                height: 70,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(130, 112, 114, 235),
                                      const Color.fromARGB(123, 155, 39, 176),
                                      const Color.fromARGB(127, 155, 39, 176),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  //color: const Color.fromRGBO(57, 62, 70, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Project X",
                                            style: TextStyle(
                                                fontSize: 22,
                                                //fontWeight: FontWeight.w700,
                                                color: Colors.black),
                                          ),
                                          const Spacer(),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xFF1E3A8A),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.0),
                                              child: Text(
                                                "Details",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    //fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "Brooklyn Williamson",
                                        style: TextStyle(
                                            fontSize: 16,
                                            //fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
