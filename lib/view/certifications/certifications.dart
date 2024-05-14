import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/certification_controller.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import '../../res/constants.dart';
import 'components/certification_grid.dart';

class Certifications extends StatelessWidget {
  final controller = Get.put(CertificationController());
  Certifications({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(prefix: 'Certifications & ', title: 'License'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
            child: CertificateGrid(crossAxisCount: 1, ratio: 1.4),
          )
        ],
      ),
    );
  }
}
