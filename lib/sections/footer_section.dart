import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, AppConstants.darkBg],
        ),
      ),
      child: Column(
        children: [
          // Download Button
          ElevatedButton.icon(
            icon: const FaIcon(FontAwesomeIcons.download, size: 16),
            label: const Text('Download Resume'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppConstants.neonBlue,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () => launchUrl(Uri.parse(AppConstants.resumeUrl)),
          ),

          const SizedBox(height: 40),

          // Copyright
          Text('© ${DateTime.now().year} Adhithian R',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 10),

          // Made with Flutter
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Made with ',
                  style: TextStyle(color: Colors.grey[600])),
              const FaIcon(FontAwesomeIcons.solidHeart,
                  color: Colors.red, size: 14),
              Text(' using Flutter',
                  style: TextStyle(color: Colors.grey[600])),
            ],
          ),
        ].animate(interval: 100.ms).fadeIn(),
      ),
    );
  }
}