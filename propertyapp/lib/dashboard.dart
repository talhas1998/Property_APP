import 'package:flutter/material.dart';
import 'package:propertyapp/DescriptionScreen.dart';
import 'package:propertyapp/Wishlist.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final List<Map<String, dynamic>> properties = [
    {
      'image': 'assets/images/House1.jpeg',
      'title': 'Craftsman House',
      'location': '520 N Btoudry Ave Los Angeles',
      'beds': 4,
      'baths': 4,
      'garage': 1,
    },
    {
      'image': 'assets/images/House2jpg.jpg',
      'title': 'Modern Apartment',
      'location': 'New York, NY',
      'beds': 3,
      'baths': 2,
      'garage': 1,
    },
    {
      'image': 'assets/images/House3.jpeg',
      'title': 'Luxury Villa',
      'location': 'Miami, FL',
      'beds': 5,
      'baths': 4,
      'garage': 1,
    },
    {
      'image': 'assets/images/House1.jpeg',
      'title': 'Cozy Cottage',
      'location': 'Denver, CO',
      'beds': 2,
      'baths': 1,
      'garage': 0,
    },
    {
      'image': 'assets/images/House3.jpeg',
      'title': 'Beach House',
      'location': 'Santa Monica, CA',
      'beds': 5,
      'baths': 4,
      'garage': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Location",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        flexibleSpace: const Padding(
          padding: EdgeInsets.only(top: 10, left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Karachi, Pakistan",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: const Icon(
                Icons.bookmark,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WishlistScreen()),
                );
              },
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Discover Best Suitable Property",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        customCircularAvatar(
                            Colors.black, 80, 'House', Colors.white),
                        const SizedBox(width: 16),
                        customCircularAvatar(
                            const Color.fromARGB(255, 226, 226, 226),
                            100,
                            'Apartment',
                            Colors.black),
                        const SizedBox(width: 16),
                        customCircularAvatar(Color.fromARGB(255, 226, 226, 226),
                            80, 'Flat', Colors.black),
                        const SizedBox(width: 16),
                        customCircularAvatar(Color.fromARGB(255, 226, 226, 226),
                            80, 'Plot', Colors.black),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 0),
                      child: const Text(
                        "Best for you",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: properties.length,
                      itemBuilder: (context, index) {
                        final property = properties[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            width: 250,
                            decoration: BoxDecoration(
                              color: Color(0xFF003366),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  child: Image.network(
                                    property['image']!,
                                    height: 200,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          property['title']!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DescriptionScreen()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 27, 40, 53),
                                            foregroundColor: Colors.white,
                                          ),
                                          child: const Text(
                                            'View',
                                          )),
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    property['location']!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 4.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.bed,
                                              size: 16, color: Colors.white),
                                          const SizedBox(width: 4),
                                          Text(
                                            '${property['beds']} Beds',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.bathtub,
                                              size: 16, color: Colors.white),
                                          const SizedBox(width: 4),
                                          Text(
                                            '${property['baths']} Baths',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.garage,
                                              size: 16, color: Colors.white),
                                          const SizedBox(width: 4),
                                          Text(
                                            '${property['garage']} Garage',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 0, top: 20),
                      child: const Text(
                        "Nearby your location ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/house4.png',
                          width: 40,
                          height: 500,
                          fit: BoxFit.cover,
                        ),
                        title: Text("Downtown Area"),
                        subtitle: Text("Located near shopping malls and parks"),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/house1.jpeg',
                          width: 40,
                          height: 500,
                          fit: BoxFit.cover,
                        ),
                        title: Text("Beachfront Property"),
                        subtitle:
                            Text("Located right by the beach with ocean views"),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/house5.jpeg',
                          width: 40,
                          height: 500,
                          fit: BoxFit.cover,
                        ),
                        title: Text("Mountain View Home"),
                        subtitle:
                            Text("Secluded area with a perfect mountain view"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customCircularAvatar(
    Color backgroundColor, double radius, String text, Color colored) {
  return Column(
    children: [
      Container(
        width: radius,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: backgroundColor),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Arial',
              fontWeight: FontWeight.w500,
              color: colored,
            ),
          ),
        ),
      ),
    ],
  );
}
