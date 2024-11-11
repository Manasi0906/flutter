import 'package:flutter/material.dart';
import 'package:leaderboard_page/NewsIndivuduals.dart';
void main() {
  runApp(const NewsPageDemo());
}

class NewsPageDemo extends StatelessWidget {
  const NewsPageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsPage(),
    );
  }
}

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});
  @override
  State createState() => _NewsPage();
}

class _NewsPage extends State {
  List<Map> newsList = [
    {
      "image": "https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg",
      "header":
          "Government Approves Rs. 10,700 Crore Equity Infusion for Food Corporation of India to Boost Agricultural Sector",
      "time": "8 hour ago"
    },
    {
      "image": "https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg",
      "header":
          "Government Approves Rs. 10,700 Crore Equity Infusion for Food Corporation of India to Boost Agricultural Sector",
      "time": "10 hour ago"
    },
    {
      "image": "https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg",
      "header":
          "Government Approves Rs. 10,700 Crore Equity Infusion for Food Corporation of India to Boost Agricultural Sector",
      "time": "12 hour ago"
    },
    {
      "image": "https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg",
      "header":
          "Government Approves Rs. 10,700 Crore Equity Infusion for Food Corporation of India to Boost Agricultural Sector",
      "time": "13 hour ago"
    },
    {
      "image": "https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg",
      "header":
          "Government Approves Rs. 10,700 Crore Equity Infusion for Food Corporation of India to Boost Agricultural Sector",
      "time": "15 hour ago"
    },
    {
      "image": "https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg",
      "header":
          "Government Approves Rs. 10,700 Crore Equity Infusion for Food Corporation of India to Boost Agricultural Sector",
      "time": "15 hour ago"
    },
    {
      "image": "https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg",
      "header":
          "Government Approves Rs. 10,700 Crore Equity Infusion for Food Corporation of India to Boost Agricultural Sector",
      "time": "15 hour ago"
    },
    {
      "image": "https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg",
      "header":
          "Government Approves Rs. 10,700 Crore Equity Infusion for Food Corporation of India to Boost Agricultural Sector",
      "time": "15 hour ago"
    },
    {
      "image": "https://img.freepik.com/free-photo/close-up-delivery-person-with-parcels_23-2149095943.jpg",
      "header":
          "Government Approves Rs. 10,700 Crore Equity Infusion for Food Corporation of India to Boost Agricultural Sector",
      "time": "15 hour ago"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "News",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        // shape: const Border(bottom: BorderSide(width: 2, color: Colors.black)),
        // shadowColor: Colors.green,
        // elevation: 10.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Newsindividualpage()));
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset("${newsList[index]["image"]}"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 65,
                                width: 250,
                                child: Text(
                                  "${newsList[index]["header"]}",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 160,
                                  ),
                                  //Spacer(),
                                  Text(
                                    "${newsList[index]["time"]}",
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}