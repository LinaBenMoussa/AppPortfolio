import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../res/constants.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: () {
          launch(
              'tel:97488966'); // Remplacez +123456789 par votre numéro de téléphone
        },
        borderRadius: BorderRadius.circular(defaultPadding + 10),
        child: Container(
          height: 60,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultPadding),
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 213, 90, 24),
                Colors.blue.shade900,
              ],
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.blue,
                offset: Offset(0, -1),
                blurRadius: defaultPadding / 4,
              ),
              BoxShadow(
                color: Colors.red,
                offset: Offset(0, 1),
                blurRadius: defaultPadding / 4,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.phone,
                color: Colors.greenAccent,
                size: 15,
              ),
              const SizedBox(width: defaultPadding / 4),
              Text(
                'Appeler',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
