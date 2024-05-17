
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  final List<Map<String, String>> items = List.generate(20, (index) {
    return {
      'image':
      "https://www.suzuki-moto.com/sites/default/files/styles/200x160/public/public/troisquart/gsx-s1000_m2_ysf_diagonal_0.jpg?itok=iq6pggn7",// replace with your image URL
      'title': 'SUZUKI 2023',
      'subtitle': 'Йил янги  ',
      'price': '\$95 000 ',
      'location': 'Ташкент, Сергелиский район',
      'date': '13 май 2024 г.'
    };
  });

  MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.75, // Adjust the aspect ratio as needed
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      item['image']!,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    item['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(item['subtitle']!),
                  const SizedBox(height: 4.0),
                  Text(
                    item['price']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text('${item['location']!}\n${item['date']!}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
