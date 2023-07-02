import 'package:flutter/material.dart';
import 'detail_page.dart';
class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("List page")),
      body: ListView(children: [

        Container(
          padding:const  EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailPage(title: "This is first List ", subtitle: "Subtitle", detail: "Details",)));
            },
            title: const Text("This is first List "),
            subtitle: const Text("First list tile"),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          child: const ListTile(
        title:  Text("This is first List "),
        subtitle:  Text("First list tile"),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(8.0),
          child: const ListTile(
        title: Text("This is first List "),
        subtitle: Text("First list tile"),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(8.0),
          child: const ListTile(
        title: Text("This is first List "),
        subtitle: Text("First list tile"),
          ),
        ),
      ])
    );
  }
}