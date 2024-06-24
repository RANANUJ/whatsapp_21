import 'package:flutter/material.dart';

import 'message_object.dart';

class TextDisplayScreen extends StatefulWidget {
  const TextDisplayScreen({super.key});
  @override
  _TextDisplayScreenState createState() => _TextDisplayScreenState();
}

class _TextDisplayScreenState extends State<TextDisplayScreen> {
  final TextEditingController _controller = TextEditingController();
  String _person1Text = '';
  String _person2Text = '';
  var list = <MessageObject>[];

  void _updateText(int person) {
    setState(() {
      if (person == 1) {
        _person1Text = _controller.text;
        list.add(
            MessageObject(dateTime: "", message: _person1Text, personType: 1));
      } else if (person == 2) {
        _person2Text = _controller.text;
        list.add(
            MessageObject(dateTime: "", message: _person2Text, personType: 2));
      }
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Display App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Text',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _updateText(1),
                  child: const Text('Person 1'),
                ),
                ElevatedButton(
                  onPressed: () => _updateText(2),
                  child: const Text('Person 2'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            list[index].message ?? "",
                            textAlign: list[index].personType == 1
                                ? TextAlign.right
                                : TextAlign.left,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
