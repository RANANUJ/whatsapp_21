import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => __ListScreenStateState();
}

class __ListScreenStateState extends State<ListScreen> {
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
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Color.fromARGB(255, 56, 170, 115)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
          )
        ],
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
