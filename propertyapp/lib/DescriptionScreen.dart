import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/houseinside1.jpeg',
      'assets/images/houseinside2.jpeg',
      'assets/images/houseinside3.jpeg',
      'assets/images/houseinside4.jpeg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          // Main content area
          SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Carousel section
              Container(
                color: Colors.white,
                child: Image.asset('assets/images/houseinside1.jpeg',
                    fit: BoxFit.cover),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Craftsman House",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Located at 520 N Beaudry Ave, Los Angeles",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Icon(Icons.king_bed, color: Color(0xFFFFD700)),
                              SizedBox(
                                width: 5,
                              ),
                              Text("4 beds"),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(Icons.bathtub, color: Color(0xFFFFD700)),
                              SizedBox(
                                width: 5,
                              ),
                              Text("bath"),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(Icons.garage_sharp,
                                  color: Color(0xFFFFD700)),
                              SizedBox(
                                width: 5,
                              ),
                              Text("garage"),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/girl.jpeg'),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Rebecca Tetha",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 27, 40, 53),
                                          foregroundColor: Colors.white,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.call, size: 16),
                                            SizedBox(width: 4),
                                            Text("Call"),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              const Text(
                                "Owner Craftsman House",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
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
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                          "Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More")
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Text(
                      "Gallery",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        customCircularAvatar('assets/images/houseinside1.jpeg'),
                        const SizedBox(width: 16),
                        customCircularAvatar('assets/images/houseinside2.jpeg'),
                        const SizedBox(width: 16),
                        customCircularAvatar('assets/images/houseinside3.jpeg'),
                        const SizedBox(width: 16),
                        customCircularAvatar('assets/images/houseinside4.jpeg'),
                        const SizedBox(width: 16),
                        customCircularAvatar('assets/images/houseinside1.jpeg'),
                        const SizedBox(width: 16),
                        customCircularAvatar('assets/images/houseinside2.jpeg'),
                        const SizedBox(width: 16),
                        customCircularAvatar('assets/images/houseinside3.jpeg'),
                        const SizedBox(width: 16),
                        customCircularAvatar('assets/images/houseinside4.jpeg'),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 66),
            ],
          )),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Price \$350,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget customCircularAvatar(String img) {
  return Column(
    children: [
      Container(
        width: 100,
        height: 100,
        child: Center(
            child: Image(
          image: AssetImage(img),
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        )),
      ),
    ],
  );
}
