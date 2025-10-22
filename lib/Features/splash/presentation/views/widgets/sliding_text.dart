import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimatuin});

  final Animation<Offset> slidingAnimatuin;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimatuin,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimatuin,
          child: const Text('Read Free Books', textAlign: TextAlign.center),
        );
      },
    );
  }
}
