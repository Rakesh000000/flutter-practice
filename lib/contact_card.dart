import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({super.key, required this.name, required this.contact});
  final String name;
  final String contact;

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade300,
      elevation: 5.0,
      child: Container(
        
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
    
              child: Column(
                children: [
                Text(widget.name),
    
                Text(widget.contact.toString())],
            )
            )
          ],
          ),
        ),
    );
  }
}