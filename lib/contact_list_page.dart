import 'package:firstproject/contact_card.dart';
import 'package:firstproject/dashboard_widget.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _contactController = TextEditingController();

  List<Map> _detail = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime.shade600,
          actions: [
            OutlinedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    _detail.add({
                      "name": _nameController.text,
                      "contact": _contactController.text
                    });
                    _nameController.clear();
                    _contactController.clear();
                    setState(() {});
                  }
                },
                child: Text("save"))
          ],
          title: Text("Contact List Page"),
        ),
        body: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Name: ",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Expanded(
                              child: TextFormField(
                            controller: _nameController,
                            validator: (val) {
                              if ((val ?? "").isEmpty) return "value haal";

                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter name",
                            ),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "contact: ",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Expanded(
                              child: TextFormField(
                            controller: _contactController,
                            validator: (val) {
                              if ((val??"").isEmpty) return "value haal";

                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter contact",
                            ),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: _detail.length,
                    itemBuilder: ((context, index) => Dismissible(
                        key: ValueKey(_detail[index]),
                        onDismissed: (DismissDirection direction){
                          setState(() {
                            _detail.removeAt(index);
                          });
                        },
                        child: ContactCard(
                            name: _detail[index]["name"],
                            contact: _detail[index]["contact"]))))),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => DashboardWidget())));
                },
                child: Text("Back to dashboard")),
          ],
        ));
  }
}
