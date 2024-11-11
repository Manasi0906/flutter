//import "package:farmer_homepage/pending_orders.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Farmer_HomePage(),
    );
  }
}

class Farmer_HomePage extends StatefulWidget {
  const Farmer_HomePage({super.key});
  @override
  State createState() => Farmer_HomePage_State();
}

class Farmer_HomePage_State extends State {
  Widget homePage(int count) {
    if (count == 1) {
      return Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 140,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.green)],
              // color: Colors.amber,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: Colors.pink,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                          "https://m.media-amazon.com/images/I/71u-Dvj9FkL.AC_UF1000,1000_QL80.jpg",
                          fit: BoxFit.cover,
                        ),
                        // child: Image.asset("assets/images/images.jpg",
                        //     fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Mumbai",
                        style: GoogleFonts.inter(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ordered By : Sumit Katkar",
                      style: GoogleFonts.inter(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Order No. : 101",
                      style: GoogleFonts.inter(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Qty:",
                          style: GoogleFonts.inter(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Amount:",
                          style: GoogleFonts.inter(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Ordered On:",
                          style: GoogleFonts.inter(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "2kg",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 94, 87, 87)),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text(
                          "70rs",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 94, 87, 87)),
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        Text(
                          "15 Jun 10:45",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 94, 87, 87)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "In Progress",
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "Dispatched",
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 140,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.green)],
              // color: Colors.amber,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: Colors.pink,
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                          "https://m.media-amazon.com/images/I/71u-Dvj9FkL.AC_UF1000,1000_QL80.jpg",
                          fit: BoxFit.cover,
                        ),
                        // child: Image.asset("assets/images/images.jpg",
                        //     fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Mumbai",
                        style: GoogleFonts.inter(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ordered By : Sumit Katkar",
                      style: GoogleFonts.inter(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Order No. : 101",
                      style: GoogleFonts.inter(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Qty:",
                          style: GoogleFonts.inter(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Amount:",
                          style: GoogleFonts.inter(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Ordered On:",
                          style: GoogleFonts.inter(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "2kg",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 94, 87, 87)),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text(
                          "70rs",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 94, 87, 87)),
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        Text(
                          "15 Jun 10:45",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 94, 87, 87)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Order Status",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        Text(
                          "Delivered On :",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Delivered",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 94, 87, 87)),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        Text(
                          "16 June 9.00AM",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 94, 87, 87)),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }
  }

  void _onItemTapped(int index) {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "My Orders",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.green,
          //centerTitle: true,
          bottom: TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              labelColor: Colors.white,
              //controller:TabController,
              tabs: [
                Tab(
                    child: Text(
                  "Pending orders",
                  style: GoogleFonts.inter(fontSize: 15),
                )),
                Tab(
                    child: Text(
                  "Dispatched orders",
                  style: GoogleFonts.inter(fontSize: 15),
                )),
              ]),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return homePage(1);
              },
            ),
            ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return homePage(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}