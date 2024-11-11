
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderdescriptionPage(),
    );
  }
}

class OrderdescriptionPage extends StatefulWidget {
  const OrderdescriptionPage({super.key});

  @override
  State<OrderdescriptionPage> createState() => _OrderdescriptionPageState();
}

class _OrderdescriptionPageState extends State<OrderdescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 199, 193, 193),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: Colors.white),
        title: const Text("Booking for 20 Jun,12:30 PM",textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 17, 92, 19),
                          ),),
       
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Padding(
          padding:const EdgeInsets.all(10),
          child: Column(
          children:[ 
            Container(
            width: double.infinity,
            height: 215,
            decoration:const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(25))),
            child:const  Padding(
              padding:const  EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10,),
                              //const SizedBox(width: 30),
                              // 
                          CircleAvatar(
                          backgroundImage:AssetImage(
                              "assets/1.webp"),
                          radius: 50,
                        ),
                              const SizedBox(width: 20),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(padding: EdgeInsets.only(bottom: 10)),
                                    Text(
                                      "Manasi Jadhav",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                     Text(
                                      "Tarale, Satara",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                     SizedBox(height: 10),
                                     Row(
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
                                     Row(
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
                                     SizedBox(height: 10),
                                  ],
                                ),
                              ),
                              
                              const  SizedBox(
                                width: 15,
                              )
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Text("Order:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 17, 76, 19)),),
                          const Text("2kg Tomato | 500g Cabbage | 100ml goat milk ",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.green),)
                ]
              ),
              
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          Container(
            height: 225,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: Colors.green),color:const Color.fromARGB(255, 43, 168, 48)),
                        child:const Icon(Icons.access_time,color: Colors.white,),
                      ),
                      const SizedBox(width: 15,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pending",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                          Text("On 18 Jun 2024 12:40 PM",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: Colors.green),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: Colors.green),color:const Color.fromARGB(255, 43, 168, 48)),
                        child:const Icon(Icons.settings,color: Colors.white,),
                      ),
                      const SizedBox(width: 15,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Order In Process",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                          Text("Will start by 20 Jun 2024, 12:30 PM",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: Colors.green),
              
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration:const BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 43, 168, 48)),
                        child:const Icon(Icons.check_circle,color: Colors.white,),
                      ),
                      const SizedBox(width: 15,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Job Finished",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                          Text("Estimated completion on 20 Jun,2024",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                ],
              
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
            child:const Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.money,color: Colors.green,size: 40,),
                SizedBox(width: 20,),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Text("Services Cost ",style: TextStyle(color: Color.fromARGB(255, 33, 102, 35),fontSize: 16,fontWeight: FontWeight.bold),),
                      Row(children:[
                        Icon(Icons.currency_rupee,size: 20,),
                        Text("50 / hr")
                    ]),
                    ],
                  ),
                )
              ],

            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
            child:const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text("  Order Address :",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Text("house no : 4, near hanuman temple, vadjal, Tal- Man, Dist- Satara,415014",style: TextStyle(fontWeight: FontWeight.bold),)))
              ]
            )
          ),
          const SizedBox(height: 10),
          Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration:const BoxDecoration(shape: BoxShape.circle),
                          child: Image.network("https://tse2.mm.bing.net/th?id=OIP.ENIN8L2HjOG7nogJc7KrvQHaHw&pid=Api&P=0&h=220",fit: BoxFit.cover,),

                        ),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Customer Review",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Rating:",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber, size: 20),
                                  Icon(Icons.star, color: Colors.amber, size: 20),
                                  Icon(Icons.star, color: Colors.amber, size: 20),
                                  Icon(Icons.star, color: Colors.amber, size: 20),
                                  Icon(Icons.star_half, color: Colors.amber, size: 20),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Description:",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                "Delivery was timely, and the items were in excellent condition. The service was satisfactory, and I appreciate the professionalism of the delivery team.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
          ]
          ),
        )
      ),
      );
    }
}