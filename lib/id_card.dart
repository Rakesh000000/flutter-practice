import 'package:flutter/material.dart';

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Identification Card")),
      body: Container(
        // height: MediaQuery.of(context).size.height/5,
        // width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(8.0),
        child:Column(
          children: [
             Card(
          elevation: 10.0,
          shadowColor: Colors.blue,
          margin: EdgeInsets.zero,
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/images.jpg",
                height: 100,
                width: 80,
                fit:BoxFit.cover
              ),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text("Name:"), Text("George")],
                  ),
                  Row(
                    children: [Text("D.O.B"), Text("2023-02-02")],
                  ),
                ],
              )
            ],
          ),
        ),
      
          ],
        )),
    );
  }
}
