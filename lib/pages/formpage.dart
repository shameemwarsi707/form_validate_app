import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class formpage extends StatefulWidget {
  const formpage({Key? key}) : super(key: key);

  @override
  State<formpage> createState() => _formpageState();
}

class _formpageState extends State<formpage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Form Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text("User Name"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: userName,
                decoration: InputDecoration(
                  hintText: "Enter User Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(),
                  ),
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text("Password"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(),
                  ),
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
             const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    print("Validated");

                    Map userRequaredData={
                      "user_name":userName.text,
                      "password":password.text
                    };
                    print(userRequaredData);
                  }else{
                    print("Not Validated");
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
