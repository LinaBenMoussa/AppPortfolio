import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';
import '../../../res/constants.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: MenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          const Spacer(
            flex: 2,
          ),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
