import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color.fromARGB(255, 15, 58, 215)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Como estas?',
              style: TextStyle(
                color: Color.fromARGB(255, 225, 226, 234),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        'https://i.pinimg.com/474x/e3/22/c0/e322c0f39f6009797dfa38275b77c072--facebook-o-avatar.jpg',
        fit: BoxFit.cover,
        width: size.width * 0.7,
        height: 150,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Mi amor esta enviando una imagen'),
          );
        },
      ),
    );
  }
}
