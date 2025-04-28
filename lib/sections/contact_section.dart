import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/section_title.dart';
import '../utils/constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback onTap,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[900],
            border: Border.all(
              color: Colors.grey[800]!,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              FaIcon(icon, color: AppConstants.neonBlue),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(value,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.chevron_right, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppConstants.darkBg, Colors.black],
        ),
      ),
      child: Column(
        children: [
          const SectionTitle(title: 'Get In Touch'),
          const SizedBox(height: 40),

          Column(
            children: [
              _buildContactCard(
                icon: FontAwesomeIcons.envelope,
                title: 'Email',
                value: 'adhiraja2004@gmail.com',
                onTap: () => launchUrl(Uri.parse(AppConstants.email)),
              ),

              const SizedBox(height: 20),

              _buildContactCard(
                icon: FontAwesomeIcons.linkedin,
                title: 'LinkedIn',
                value: 'linkedin.com/in/adhithian-r',
                onTap: () => launchUrl(Uri.parse(AppConstants.linkedIn)),
              ),

              const SizedBox(height: 20),

              _buildContactCard(
                icon: FontAwesomeIcons.github,
                title: 'GitHub',
                value: 'github.com/Adhi7913',
                onTap: () => launchUrl(Uri.parse(AppConstants.github)),
              ),
            ].animate(interval: 200.ms).fadeIn().slideY(begin: 0.1),
          ),
        ],
      ),
    );
  }
}