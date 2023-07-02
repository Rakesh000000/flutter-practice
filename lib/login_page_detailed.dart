import 'package:flutter/material.dart';

class LoginPageDetailed extends StatefulWidget {
  const LoginPageDetailed({super.key});

  @override
  State<LoginPageDetailed> createState() => _LoginPageDetailedState();
}

class _LoginPageDetailedState extends State<LoginPageDetailed> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController(text: "user....");
  bool _obsecuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Form(
        key: _formkey,
        child: Column(children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("images/abc.jpg"),
          ),
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
                      hintText: "Email",
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

        Container(
          decoration: BoxDecoration(border: Border.all()),
        )

        ]),
      ),
    );
  }
}
