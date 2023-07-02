import 'package:firstproject/contact_card.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
// List _contact_list = ["Rakesh", "Utsarga", "Ram", "Hari"];

  List mapped_list = [
    {"address": "Kathmandu", "surname": "regmi"},
    {"address": "Lalitpur", "surname": "chapagain"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.blue, title: const Text("Contacts")),
      body: ListView.builder(

        itemCount: mapped_list.length + 1,
        itemBuilder: (context, index) {
          int a = index - 1;
          if (index == 0) {
            return TextField(
              decoration: InputDecoration(hintText: "Search Contact"),
            );
          } else {
            return ContactCard(
              name: mapped_list[a]["address"],
              contact: mapped_list[a]["surname"],
            );
          }
        },
      ),
    );
  }
}
