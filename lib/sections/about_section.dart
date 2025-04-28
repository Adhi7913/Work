import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/section_title.dart';
import '../utils/constants.dart';
import '../widgets/skill_chip.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      color: AppConstants.darkBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Professional Summary'),
          const SizedBox(height: 30),
          Text(AppConstants.aboutText,
            style: TextStyle(color: Colors.grey[300], fontSize: 16),
          ).animate().fadeIn(delay: 200.ms).slideX(begin: 0.1),

          const SizedBox(height: 40),

          const SectionTitle(title: 'Core Competencies'),
          const SizedBox(height: 20),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: const [
              SkillChip(label: 'Mobile Development'),
              SkillChip(label: 'API Integration'),
              SkillChip(label: 'UI/UX Design'),
              SkillChip(label: 'IoT Systems'),
              SkillChip(label: 'PC Building'),
              SkillChip(label: 'Bilingual'),
            ],
          ).animate().fadeIn(delay: 400.ms),
        ],
      ),
    );
  }
}