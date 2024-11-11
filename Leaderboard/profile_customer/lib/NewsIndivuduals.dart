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
      home: Newsindividualpage(),
    );
  }
}

class Newsindividualpage extends StatefulWidget {
  const Newsindividualpage({super.key});

  @override
  State<Newsindividualpage> createState() => _NewsindividualpageState();
}

class _NewsindividualpageState extends State<Newsindividualpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News of the Day",
          style: GoogleFonts.quicksand(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        centerTitle: true,
        shape: const Border(bottom: BorderSide(width: 2, color: Colors.black)),
        shadowColor: Colors.black,
        elevation: 10.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "First Advance Estimates for 2024-25 Kharif Crops Released; Record 1,647.05 LMT Foodgrain Production Projected",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              Image.network("https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Agriculture Ministry projects a record 1,647.05 LMT in Kharif foodgrain production for 2024-25, driven by strong yields in rice, maize, and oilseeds. This estimate, enhanced by Digital Crop Survey data, reflects significant gains over last year,              ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "The Ministry of Agriculture and Farmers’ Welfare has released the First Advance Estimates for major Kharif crop production in 2024-25, projecting a notable increase in foodgrain and oilseed production over the previous year. These estimates, prepared from data provided by various states and corroborated through advanced digital methods, show significant gains in rice, maize, and oilseed output.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "For the first time, crop area estimates have been informed by data from the Digital Crop Survey (DCS), conducted under the Digital Agriculture Mission in collaboration with state governments. This digital method, piloted in Uttar Pradesh, Madhya Pradesh, Gujarat, and Odisha, aims to replace traditional manual surveys for greater accuracy. DCS implementation in these states has contributed to a substantial rise in rice cultivation, especially in Uttar Pradesh.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}