import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        height: 900,
        width: 300,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(color: Colors.grey),
              child: const Column(
                children: [
                  SizedBox(height: 30),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/farmfresh logo.jpg"),
                    radius: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Delivery Person Name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            _buildDrawerOption(
              context,
              icon: Icons.person_outlined,
              label: "Profile Details",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DeliveryPersonProfile()),
                );
              },
            ),
            const SizedBox(height: 20),
            _buildDrawerOption(
              context,
              icon: Icons.history,
              label: "Delivery History",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DeliveryHistoryPage()),
                );
              },
            ),
            const SizedBox(height: 20),
            _buildDrawerOption(
              context,
              icon: Icons.payment,
              label: "Earnings",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EarningsPage()),
                );
              },
            ),
            const SizedBox(height: 20),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Delivery Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.grey[300],
          ),
          Positioned(
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Column(
                children: [
                  SizedBox(height: 30),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/farmfresh logo.jpg"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Delivery Person Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Center(
                child: Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "Deliveries This Week",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                      const Text(
                        "+5 since last week",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      CustomProgressIndicator(userScore: 70),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          DeliveryStatusIndicator(label: "Pending", color: Colors.red),
                          DeliveryStatusIndicator(label: "In Progress", color: Colors.orange),
                          DeliveryStatusIndicator(label: "Completed", color: Colors.green),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 480,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Center(
                child: Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Available Orders",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        child: OrderList(), // Placeholder for available orders list
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerOption(BuildContext context, {required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: Colors.green)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          children: [
            Icon(icon, color: Colors.black),
            const SizedBox(width: 10),
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomProgressIndicator extends StatelessWidget {
  final double userScore;
  final double maxScore = 100;

  CustomProgressIndicator({required this.userScore});

  @override
  Widget build(BuildContext context) {
    double progress = userScore / maxScore;

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: CustomPaint(
            painter: ArcPainter(progress),
          ),
        ),
        Text(
          '${userScore.toInt()}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ArcPainter extends CustomPainter {
  final double progress;

  ArcPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    double angle = 2 * pi * progress;

    Paint baseArcPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    Paint progressArcPaint = Paint()
      ..color = const Color(0xFF1F2E58)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;

    canvas.drawCircle(center, radius, baseArcPaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      angle,
      false,
      progressArcPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class DeliveryStatusIndicator extends StatelessWidget {
  final String label;
  final Color color;

  const DeliveryStatusIndicator({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 5, backgroundColor: color),
        const SizedBox(width: 5),
        Text(label),
      ],
    );
  }
}

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder widget to simulate a list of available orders.
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "Order #12345\nOrder #12346\nOrder #12347",
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
    );
  }
}