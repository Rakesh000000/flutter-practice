import 'package:firstproject/custom_card_view.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.title, required this.subtitle, required this.detail});
  final String title;
  final String subtitle;
  final String detail;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Detail Page"),
    ),

    body: Column(
      
      children: [
      Text(widget.title),
      Text(widget.subtitle),
      Text(widget.detail),

      const CustomCardView(text: "This is first card hello hello hello hello"),
      const CustomCardView(text: "This is first card hello hello hello hello"),

    ],)
    
    );
  }
}