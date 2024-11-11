import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './Profile.dart';
import './wallet.dart';
import './orderDescription.dart';
import './ratingdemo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyMainApp(),
    );
  }
}

class MyMainApp extends StatefulWidget {
  const MyMainApp({super.key});

  @override
  State<MyMainApp> createState() => _MyMainAppState();
}

class _MyMainAppState extends State<MyMainApp> {
  final RatingPage rating = const RatingPage();
  final DeliveryPersonProfile profile = const DeliveryPersonProfile();
  final WalletPage wallet = const WalletPage();
  final OrderdescriptionPage orderDescription = const OrderdescriptionPage();

  bool flag = true;

  final String customerPhoneNumber = '9637115627';

  final List<String> orderDetails = [
    "Order #1234 - 5 kg of Tomatoes",
    "Order #5678 - 10 kg of Potatoes",
    "Order #9101 - 2 kg of Apples",
    "Order #1121 - 3 kg of Carrots",
    "Order #3141 - 1 kg of Grapes"
  ];

  Future<void> _callCustomer() async {
    final Uri callUri = Uri(scheme: 'tel', path: customerPhoneNumber);
    if (await canLaunchUrl(callUri)) {
      await launchUrl(callUri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Could not place a call to the customer.")),
      );
    }
  }

  Widget upcomingOrders() {
    return Expanded(
      child: ListView.builder(
        itemCount: orderDetails.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => orderDescription),
                );
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.green, width: 2),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    children: [
                      const SizedBox(width: 30),
                      Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const CircleAvatar(
                          backgroundImage:AssetImage(
                              "assets/1.webp"),
                          radius: 60,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Manasi Jadhav",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Tarale, Satara",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              children: const [
                                Text(
                                  "Date: ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  "24 Jun, 2024",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: const [
                                Text(
                                  "Time: ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  "12:30",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              orderDetails[index],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.call, color: Colors.white),
                          onPressed: _callCustomer,
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget pastOrders() {
    return Expanded(
      child: ListView.builder(
        itemCount: orderDetails.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => orderDescription),
                );
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.green, width: 2),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    children: [
                      const SizedBox(width: 30),
                      Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const CircleAvatar(
                          backgroundImage:AssetImage(
                              "assets/2.jpg"),
                          radius: 50,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Sumit Katkar",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Vadjal, Satara",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              children: const [
                                Text(
                                  "Date: ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  "24 Jun, 2024",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: const [
                                Text(
                                  "Time: ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  "12:30",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              orderDetails[index],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 225, 225),
      body: Column(
        children: [
          CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverAppBar(
                expandedHeight: 110,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.green,
                          Color.fromARGB(255, 232, 236, 233),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          "Orders",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 17, 92, 19),
                          ),
                        ),
                        const SizedBox(height: 22),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  flag = true;
                                });
                              },
                              child: const Text(
                                "Upcoming orders",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 49, 150, 52),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  flag = false;
                                });
                              },
                              child: const Text(
                                "Past orders",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 49, 150, 52),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          flag ? upcomingOrders() : pastOrders(),
        ],
      ),
    );
  }
}
