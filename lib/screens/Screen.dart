import 'dart:ui';

import 'package:flutter/material.dart';

class myTextFeeldWidget extends StatelessWidget {
  const myTextFeeldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome here "),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image(
                image: AssetImage("images/2.png"),
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                enableSuggestions: true,
                autocorrect: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.indigoAccent),
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      gapPadding: 20,
                    ),
                    label: Text(
                      "Search",
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      //vertical: 30,
                    ),
                    hintText: "Search here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
