import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all( color: const Color.fromARGB(255, 15, 58, 215)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola',
              style: TextStyle(
                color: Color.fromARGB(255, 225, 226, 234),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
