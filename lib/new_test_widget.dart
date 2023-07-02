import 'package:flutter/material.dart';

class CardWithTextWidget extends StatelessWidget {
  const CardWithTextWidget({
    super.key,
    required this.name,
    required this.roll,
    required this.image,
    required this.icon,
  });
  final String name;
  final int roll;
  final String image;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Icon(
              icon,
              size: 50,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            roll.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Image.network(image),
        Container(
          // height: 100,
          // width: 100,
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(image: NetworkImage(image)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              name,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}