import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookInfoPage extends StatelessWidget {
  const BookInfoPage({super.key});
  static const rootName = '/info';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          actions: [
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('back'),
            ),
          ],
        ),
        body: const Center(
          child: Text('infomation'),
        ),
      );
}
