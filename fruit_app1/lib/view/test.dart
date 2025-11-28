import 'package:flutter/material.dart';



class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Horizontal Card ListView'),
        ),
        body: HorizontalCardList(),
      );

  }
}

class HorizontalCardList extends StatelessWidget {
  // Sample data for the cards
  final List<Map<String, dynamic>> items = [
    {
      'image': 'https://picsum.photos/200/300?random=1',
      'title': 'Beautiful Landscape',
      'description': 'Stunning mountain view with sunset colors',
      'price': '\$129.99',
      'rating': '4.8',
    },
    {
      'image': 'https://picsum.photos/200/300?random=2',
      'title': 'City Lights',
      'description': 'Night view of downtown skyscrapers',
      'price': '\$89.99',
      'rating': '4.5',
    },
    {
      'image': 'https://picsum.photos/200/300?random=3',
      'title': 'Beach Paradise',
      'description': 'White sandy beach with crystal clear water',
      'price': '\$199.99',
      'rating': '4.9',
    },
    {
      'image': 'https://picsum.photos/200/300?random=4',
      'title': 'Forest Adventure',
      'description': 'Dense green forest with hiking trails',
      'price': '\$79.99',
      'rating': '4.7',
    },
    {
      'image': 'https://picsum.photos/200/300?random=5',
      'title': 'Modern Architecture',
      'description': 'Contemporary building design',
      'price': '\$149.99',
      'rating': '4.6',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Featured Items',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 280, // Fixed height for the horizontal list
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // ← This makes it horizontal
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                width: 220, // Fixed width for each card
                margin: const EdgeInsets.only(right: 16.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.network(
                          items[index]['image'],
                          height: 140,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              height: 140,
                              color: Colors.grey[200],
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 140,
                              color: Colors.grey[200],
                              child: const Icon(Icons.error),
                            );
                          },
                        ),
                      ),

                      // Content
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title
                            Text(
                              items[index]['title'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                            const SizedBox(height: 4),

                            // Description
                            Text(
                              items[index]['description'],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),

                            const SizedBox(height: 8),

                            // Price and Rating row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  items[index]['price'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.star,
                                        color: Colors.amber,
                                        size: 16),
                                    const SizedBox(width: 4),
                                    Text(
                                      items[index]['rating'],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ],
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
    );
  }
}