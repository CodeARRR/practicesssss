import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                labelText: "enter name",
                hintText: "user name",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "required";
                } else {
                  return null;
                }
              }),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              print("login");
            },
            child: Text("Press me"),
            style: TextButton.styleFrom(foregroundColor: Colors.white),
          )
        ],
      )),
    );
  }
}
