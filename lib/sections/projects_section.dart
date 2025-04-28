import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/section_title.dart';
import '../utils/constants.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.black, AppConstants.darkBg],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Key Projects'),
          const SizedBox(height: 40),

          _buildProjectCard(
            icon: FontAwesomeIcons.mobileScreen,
            title: 'Scalable Flutter Based BMI Applications',
            description: 'A scalable Flutter-based BMI application that calculates BMI and provides remedies when the result falls outside the normal weight range.',
            technologies: 'Flutter • BMI Calculation • Health Remedies',
          ).animate().fadeIn(delay: 200.ms).slideX(begin: 0.1),

          const SizedBox(height: 30),

          _buildProjectCard(
            icon: FontAwesomeIcons.ambulance,
            title: 'Ambulance Emergency System',
            description: 'Automated traffic management using RFID and Arduino with SIM800L module for real-time communication.',
            technologies: 'Arduino • RFID • SIM800L',
          ).animate().fadeIn(delay: 400.ms).slideX(begin: 0.2),
        ],
      ),
    );
  }

  Widget _buildProjectCard({
    required IconData icon,
    required String title,
    required String description,
    required String technologies,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[900],
        boxShadow: [
          BoxShadow(
            color: AppConstants.neonBlue.withOpacity(0.1),
            blurRadius: 20,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FaIcon(icon, color: AppConstants.neonPink),
              const SizedBox(width: 15),
              Text(title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(description,
            style: TextStyle(color: Colors.grey[400], height: 1.5),
          ),
          const SizedBox(height: 15),
          Text(technologies,
            style: TextStyle(
              color: AppConstants.neonGreen,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}