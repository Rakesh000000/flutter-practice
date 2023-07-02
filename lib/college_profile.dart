// import 'package:firstproject/dashboard_widget.dart';
import 'package:flutter/material.dart';

class CollegeProfile extends StatelessWidget {
  const CollegeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Kantipur Engineering College"),
      ),

      body: SingleChildScrollView(
        child: Column(children: [
          Row(children: [

            Image.asset("Assets/my_photo.jpg",
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width/4,
            ),

            const Card(
              child: Column(children: [
                Row(children: [
                  Text("Name: "),
                  Text("Rakesh Pandey"),
                ],),
            
                Row(children: [
                  Text("Address:"),
                  Text("Kathmandu"),
                ],),
            
              ],),
            ),

          ],),

          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, "/dashboard");

            // Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardWidget()));
          }, child: const Text("Button")),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, "/dashboard");
          }, child: const Text("Press to die")),

          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/ListPage");
          }, child: const Text("ListPage"))

        ]),
      ),

    );
}
}