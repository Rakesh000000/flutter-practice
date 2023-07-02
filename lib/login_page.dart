import 'package:firstproject/dashboard_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _obsecuretext = true;
  final _formkey = GlobalKey<FormState>();
  
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page",),),

      body: Form(
        key: _formkey,

        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if((value??"").length <=5)
                  return "Email less than 5 characters";
                  return null;
                },

                controller: _emailController,

                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  
                ),
              ),
            ),
      
            
            Padding(padding: EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              validator: (pass){
                String _a = pass??"";
                if(_a.length <= 8)
                return "Invalid password";
                return null;
              },
              controller: _passwordController,
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
      
            ElevatedButton(onPressed: (){
              if(_formkey.currentState!.validate()){
                print("validate");
                print(_emailController.text);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardWidget()));
              }
              // Navigator.push(context, MaterialPageRoute(builder: ((context) => DashboardWidget())));
            }, child: Text("Sign Up"))
          ],
        ),
      ),
    );
    
  }
}