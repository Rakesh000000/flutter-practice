import 'package:flutter/material.dart';

class CustomCardView extends StatefulWidget {
  const CustomCardView({super.key, required this.text});
  final String text;

  @override
  State<CustomCardView> createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(widget.text),
          
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Icon(Icons.person),
            Icon(Icons.phone),
            Icon(Icons.abc)
          ],)
        ],
      ),
    );
  }
}