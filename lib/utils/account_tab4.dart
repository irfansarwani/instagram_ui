import 'package:flutter/material.dart';

class AccountTab4 extends StatelessWidget {
  const AccountTab4({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              color: Colors.grey[500],
            ),
          );
        });
  }
}
