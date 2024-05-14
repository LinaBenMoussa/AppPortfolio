import 'package:flutter/material.dart';
import '../../../res/constants.dart';
import 'animated_texts_componenets.dart';
import 'combine_subtitle.dart';
import 'description_text.dart';
import 'download_button.dart';
import 'headline_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.06,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.23,
                  ),
                  const AnimatedImageContainer(
                    width: 150,
                    height: 200,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              const MyPortfolioText(start: 35, end: 30),
              Container(
                height: defaultPadding,
                color: const Color.fromARGB(0, 149, 0, 0),
              ),
              const CombineSubtitleText(),
              const SizedBox(height: defaultPadding / 2),
              const AnimatedDescriptionText(start: 14, end: 12),
              const SizedBox(
                height: defaultPadding * 2,
              ),
              const DownloadButton(),
            ],
          ),
        ),
        const Spacer(),
        const Spacer()
      ],
    );
  }
}
