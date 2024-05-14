import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const AnimatedSubtitleText(
            start: 25, end: 20, text: 'Software Engeneering '),
        ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(colors: [
                Color.fromARGB(255, 213, 90, 24),
                Colors.blue,
              ]).createShader(bounds);
            },
            child: const AnimatedSubtitleText(
                start: 25, end: 20, text: 'Student ', gradient: true))
      ],
    );
  }
}
