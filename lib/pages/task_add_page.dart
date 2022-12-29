import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskAddPage extends ConsumerWidget {
  const TaskAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
            actions: [
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 7,
                  right: 7,
                  bottom: 10,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade300,
                  ),
                  child: const Text('追加'),
                ),
              ),
            ],
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10, left: 50, right: 5),
          child: TextFormField(
            style: const TextStyle(fontSize: 25),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: '家事を追加',
              hintStyle: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
        const Divider(),
        Container()
      ],
    );
  }
}
