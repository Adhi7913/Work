// lib/sections/skills_section.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/section_title.dart';
import '../widgets/skill_chip.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Skills'),
          const SizedBox(height: 10),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: const [
              SkillChip(label: 'Flutter', icon: FontAwesomeIcons.mobile),
              SkillChip(label: 'Firebase', icon: FontAwesomeIcons.fire),
              SkillChip(label: 'Dart', icon: FontAwesomeIcons.code),
              SkillChip(label: 'API Integration', icon: FontAwesomeIcons.plug),
              SkillChip(label: 'Arduino', icon: FontAwesomeIcons.microchip),
              SkillChip(label: 'RFID Systems', icon: FontAwesomeIcons.satellite),
            ],
          ).animate().fade(),
        ],
      ),
    );
  }
}
