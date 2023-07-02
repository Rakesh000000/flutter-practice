import 'package:firstproject/dashboard_widget.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? _groupValue;
  final _formkey = GlobalKey<FormState>();
  bool _obsecuretext = true;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SignUp Page")),

      body: Form(
        key: _formkey,

        child: ListView(
          children: [

            Row(
              children: [
                Text("Username:"),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if ((value ?? "").length <= 5) return "Invalid username";
                        return null;
                      },
                      controller: _usernameController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "username",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      
            Row(children: [
              Text("Password: "),
              Expanded(child: Padding(padding: EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
                validator: (pass){
                  String _a = pass??"";
                  if(_a.length <= 8)
                  return "Invalid password";

                  return null;
                },
                obscureText: _obsecuretext,

                decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),

                suffixIcon: 
                IconButton(onPressed: (){
                  _obsecuretext = !_obsecuretext;
                  setState(() {});
                }, 
        
                icon: Icon(_obsecuretext==true?Icons.visibility_off:Icons.remove_red_eye)),
        
              )
              ),
              ),
              )
          ],
          ),

          Row(children: [
              Text("Confirm Password: "),
              
              Expanded(child: Padding(padding: EdgeInsets.all(8.0),
                child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                validator: (pass){
                  if(pass != _passwordController.text)
                  return "password mismatch";
                  return null;
                },
                obscureText: _obsecuretext,
                decoration: InputDecoration(
                hintText: "confirm Password",
                border: OutlineInputBorder(),
        
                suffixIcon: 
                IconButton(onPressed: (){
                  _obsecuretext = !_obsecuretext;
                  setState(() {});
                }, 
        
                icon: Icon(_obsecuretext==true?Icons.visibility_off:Icons.remove_red_eye)),
        
              )
              ),
              ),
              )
          ],
          ),

          Text("Gender"),

          Row(
            children: [
              Text("Male"),
              Radio(value: "male", groupValue: _groupValue, onChanged: (val){
                _groupValue = val;
                setState(() {
                  
                });
              })
            ],
          ),

          Row(
            children: [
              Text("female"),
              Radio(value: "female", groupValue: _groupValue, onChanged: (val){
                _groupValue = val;
                setState(() {
                  
                });
              })
            ],
          ),

          Row(
            children: [
              Text("others"),
              Radio(value: "others", groupValue: _groupValue, onChanged: (val){
                _groupValue = val;
                setState(() {
                  
                });
              })
            ],
          ),

          Container(
            child: Row(
              children: [
                Text("+977"),
                Expanded(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "0000000000",
                        border: OutlineInputBorder(),
                        ),
                      controller: _phoneNumberController,
                    ),
                  ),
                )
              ]
            )
          ),

          ElevatedButton(onPressed: (){
            if(_formkey.currentState!.validate()){
              print("Validated");
              print(_passwordController);

              if(_groupValue!=null){
                if(_phoneNumberController.text.length == 10)
               Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardWidget()));
               else print("phone number not valid");
              }

            }
          }, child: Text("SignUp"))
          ],

        ),
      ),
    );
  }
}