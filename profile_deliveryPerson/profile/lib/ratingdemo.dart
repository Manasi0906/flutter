import 'package:flutter/material.dart';
import './graph.dart'; // Importing the RatingChart graph widget

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RatingPage(),
    );
  }
}

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  final RatingChart ratingChart = RatingChart(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Current Rating",textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 17, 92, 19),
                          ),),
        actions: const [
          Icon(Icons.notifications_outlined)
        ],
        
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 80,
            ),
            const SizedBox(height: 10),
            Container(
              height: 40,
              width: 65,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black,),
              child: const Text(
                "4.0",textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Thank you for delivering with us!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "Rating Over Time",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 28, 104, 29),
              ),
            ),
            const SizedBox(height: 20),

            Container(
              height: 200,
              child: ratingChart, 
            ),

            const SizedBox(height: 20),

            const Text(
              "Rating Breakdown",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color:  Color.fromARGB(255, 15, 96, 27),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                RatingDetail(label: "5 Stars", count: "120"),
                RatingDetail(label: "4 Stars", count: "80"),
                RatingDetail(label: "3 Stars", count: "20"),
                RatingDetail(label: "2 Stars", count: "5"),
                RatingDetail(label: "1 Star", count: "3"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RatingDetail extends StatefulWidget {
  final String label;
  final String count;

  const RatingDetail({super.key, required this.label, required this.count});

  @override
  State<RatingDetail> createState() => _RatingDetailState();
}

class _RatingDetailState extends State<RatingDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.label,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(height: 5),
        Text(
          widget.count,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
