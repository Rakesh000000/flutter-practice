import 'dart:convert';

import 'package:firstproject/posts.dart';
import 'package:flutter/material.dart';

import 'http_request_page.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  getData() {
    data = HttpRequestPage.fetchFacts();
  }

  Future? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Page"),
      ),
      body: FutureBuilder(
          future: HttpRequestPage.fetchFacts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data != null) {
                print(snapshot.data.runtimeType);

                List _tempData = jsonDecode(snapshot.data as String);

                List<Posts> _postData =
                    _tempData.map((item) => Posts.fromJson(item)).toList();

                return SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        _postData.length,
                        (index) => ListTile(
                              title: Text(_postData[index].title??""),
                            )),
                  ),
                );
              } else {
                return Center(
                  child: Text("No Data Found"),
                );
              }
            }
            return Text("This is else case");
          }),
    );
  }
}