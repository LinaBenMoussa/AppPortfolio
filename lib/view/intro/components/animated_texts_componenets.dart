import 'package:flutter/material.dart';

import '../../../res/constants.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 350, this.width = 300})
      : super(key: key);
  final double? width;
  final double? height;
  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 8 * value), // Move the container up and down
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(defaultPadding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 213, 90, 24),
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 213, 90, 24),
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Image.asset(
                  'assets/images/image.png',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
