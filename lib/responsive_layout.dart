import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(
      children: [
        
        Container(
          alignment: Alignment.center,
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: const Text("Column 1"),
          ),

          Row(children: [
            Container(alignment: Alignment.center ,
            height: 100 ,
            width:  MediaQuery.of(context).size.width/2 ,
            color: Colors.yellow,
            child: const Text("Column2, Row1"),),

             Container(alignment: Alignment.center ,
            height: 100 ,
            width:  MediaQuery.of(context).size.width/2 -8,
            color: Colors.green,
            child: const Text("Column2, Row2"),),

                        ],
          ),

          Row(children: [
            Container(alignment: Alignment.center ,
            height: 100 ,
            width:  MediaQuery.of(context).size.width/2 ,
            color: Colors.blue,
            child: const Text("Column3, Row1"),),

             Container(alignment: Alignment.center ,
            height: 100 ,
            width:  MediaQuery.of(context).size.width/2 -8 ,
            color: Colors.yellow,
            child: const Text("Column3, Row1"),),

                        ],
          ),
          
        Container(
          alignment: Alignment.center,
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: Colors.lightBlue,
          child: const Text("Column 4"),
          ),     
      ],
    ),);
  }
}