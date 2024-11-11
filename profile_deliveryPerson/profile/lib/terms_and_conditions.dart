import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TermsandconditionsPage(),
    );
  }
}

class TermsandconditionsPage extends StatefulWidget {
  const TermsandconditionsPage({super.key});

  @override
  State<TermsandconditionsPage> createState() => _TermsandconditionsPageState();
}

class _TermsandconditionsPageState extends State<TermsandconditionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Terms and Conditions",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Terms and Conditions for Delivery Persons",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome to our Delivery Person Marketplace App. Please carefully read these Terms and Conditions before using the platform. By registering as a delivery person, you agree to comply with these terms.",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "1. Acceptance of Terms",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                const Text(
                  "By using this app, you agree to these Terms and Conditions in full. If you disagree with any part of these terms, you should not use the platform.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2. Delivery Person Eligibility",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "You must be at least 18 years old and comply with the legal or regulatory requirements applicable to delivery services in your region.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "3. Account Registration",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "You must provide accurate information during registration, including your name, contact information, vehicle details, and required verification documents. Misrepresentation or inaccurate information may result in account suspension or termination.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "4. Delivery Routes and Schedule",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "Delivery persons are responsible for adhering to the delivery routes and schedules provided by the app. Consistent delays or failure to complete deliveries as scheduled may result in penalties or termination of the account.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "5. Delivery Responsibilities",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "As a delivery person, you must ensure that products are delivered in a timely, safe, and professional manner. You must also assist customers with unloading the goods if required.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "6. Delivery Fees and Payment",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "You will receive payment for each successful delivery. Payment details and the commission rate will be available in your account. The app may deduct a service fee from the payment for operational costs.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "7. Vehicle and License Requirements",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "You must ensure that your vehicle is in good working condition and comply with the local traffic regulations. A valid driving license and vehicle registration details must be submitted and verified.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "8. Safety and Conduct",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "You are responsible for following all safety protocols and guidelines while making deliveries. Inappropriate behavior, unsafe driving, or any actions that jeopardize the safety of yourself or others may lead to immediate termination of your account.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "9. Customer Feedback and Ratings",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "The app includes a feedback system where customers can rate your service. Delivery persons with high ratings may be rewarded with additional benefits, while poor ratings may result in penalties.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "10. Contact Information",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "For questions, support, or further information regarding these Terms and Conditions, please reach out to us at [support email or contact info].",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
