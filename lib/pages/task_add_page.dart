import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskAddPage extends ConsumerWidget {
  const TaskAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('追加'),
          ),
        ],
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, left: 50, right: 5),
                child: TextFormField(
                  style: const TextStyle(fontSize: 25),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: ' 家事を追加',
                    hintStyle: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const Divider(),
              Container(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
