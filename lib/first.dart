import 'package:flutter/material.dart';

class listscreen extends StatefulWidget {
  const listscreen({super.key});

  @override
  State<listscreen> createState() => __listscreenStateState();
}

class __listscreenStateState extends State<listscreen> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  // var _incrementcounter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementQuantity,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("WhatApp screen"),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: _quantity,
        itemBuilder: (context, index) {
          const column = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Preson name"),
              Text("message and calls"),
            ],
          );
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.035,
                  backgroundImage: const NetworkImage(
                      "https://th.bing.com/th/id/OIP.bmuzJ3FVRklBY5KvYFqw9wHaEK?rs=1&pid=ImgDetMain"),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: column,
                ),
                const Spacer(),
                const Text("Date"),
              ],
            ),
          );
        },
      ),
    );
  }
}
