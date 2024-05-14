import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import 'components/projects_grid.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(prefix: 'Latest', title: 'Projects'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
            child: ProjectGrid(crossAxisCount: 1, ratio: 1.5),
          )
        ],
      ),
    );
  }
}
