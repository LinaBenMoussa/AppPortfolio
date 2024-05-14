import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.prefix, required this.title});

  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$prefix ',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
