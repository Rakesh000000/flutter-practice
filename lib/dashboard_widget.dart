import 'package:firstproject/chat_app.dart';
import 'package:firstproject/contact_list_page.dart';
import 'package:firstproject/id_card.dart';
import 'package:firstproject/image_slider_page.dart';
import 'package:firstproject/login_page_detailed.dart';
import 'package:firstproject/signup_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text("Dashboard"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/images.jpg",
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width/10),     

      
            Container(
              padding: const EdgeInsets.all(18.0),
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3
                  ),
              ),
      
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: [
                Text("Name: ", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, fontFamily: AutofillHints.birthday), ),
                Text("User", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, fontFamily: AutofillHints.birthday),),
              ]),
      
            ),
      
      
            const Card(
              elevation: 3,
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: [
                Row(children: [
                  Icon(Icons.phone),
                  Text("Roll: "),
      
                ],),
      
                Expanded(child: Text("1234567687")),
              ]),
            ),
      
            Container(
      
              margin: const EdgeInsets.all(2.0),
              padding: const EdgeInsets.only(bottom: 0.3, top: 4.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: Colors.black,
                )
              ),
      
              child: Column(
                children: [
                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-bargjHS0bbEvbcmCkoUHD649_T1AfqU6tQ&usqp=CAU", 
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                  ),
      
                  Text("Live with the music",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),),
      
                ],
              ),
            ),
      
            
            Stack(
              alignment: Alignment.center,
              children: [

                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(9.0),
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 197, 172, 239),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    shape: BoxShape.rectangle,
                  ),

                  child: const Text("Spotify",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  ),

                ),

              ],
              
              ),



              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/contact_screen");
              },
              child: const Text("Contacts")
              ),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context){ return IdCard();})));
              }, child: const Text("ID CARD")
              
              ),

              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (((context) {
                  return ChatApp();
                })
                )
                )
                );
              }, 
              
              child: Text("Chat App", style: TextStyle(color: Colors.amber[700]),)),

              ElevatedButton(onPressed:(){
               
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));}
              , child: Text("Login Page")
              ),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPageDetailed()));
              }, child: Text("Login Page Detailed")
              ),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
              }, child: Text("Signup Page")),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactListPage()));
              }, child: Text("Contact List Page")),
              
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ImageSliderPage()));
              }, child: Text("Image slider page")),
          ],
        ),
      ),

    );
  }
}