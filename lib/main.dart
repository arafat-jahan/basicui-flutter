import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Restaurant Menu'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // প্রথমে ইমেজ
              Image.asset('assets/menu_image.jpg', height: 150, width: 150),

              // তারপর মেনু আইটেমের নাম
              Text('Menu Item 1'),
              Text('Menu Item 2'),

              // Order Now বাটন
              SizedBox(height: 20),  // কিছু ফাঁকা জায়গা
              ElevatedButton(
                onPressed: () {
                  print('Order Now clicked!');
                },
                child: Text('Order Now'),
              ),

              // রেস্টুরেন্টের বর্ণনা (নিচে, পুরো প্রস্থে)
              SizedBox(height: 20),  // কিছু ফাঁকা জায়গা
              Container(
                width: double.infinity,
                decoration : BoxDecoration(
                  color: Colors.green,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome to our restaurant! We serve the best dishes from around the world. Enjoy your meal in a cozy, family-friendly environment. Our food is freshly made with the finest ingredients, and we guarantee a great experience!',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ),

              // এখানে নতুন আইটেম লিস্টের কোড
              SizedBox(height: 20),  // কিছু ফাঁকা জায়গা
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightGreen[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      // প্রথম আইটেম (Pizza)
                      Row(
                        children: [
                          Image.asset(
                            'assets/pizza.jpg', // আপনার ছবি এখানে দিন
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pizza',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Delicious cheese pizza with extra toppings.',
                                style: TextStyle(color: Colors.black54),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      // দ্বিতীয় আইটেম (Burger)
                      Row(
                        children: [
                          Image.asset(
                            'assets/burger.jpg', // আপনার ছবি এখানে দিন
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Burger',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Juicy beef burger with crispy fries.',
                                style: TextStyle(color: Colors.black54),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
