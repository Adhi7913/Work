import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/constants.dart';

class SkillChip extends StatelessWidget {
  final String label;
  final IconData? icon;

  const SkillChip({super.key, required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: icon != null
          ? FaIcon(icon, size: 14, color: AppConstants.neonBlue)
          : null,
      label: Text(label),
      backgroundColor: Colors.grey[900],
      labelStyle: const TextStyle(color: Colors.white),
      side: BorderSide(color: AppConstants.neonBlue.withOpacity(0.3)),
      shape: StadiumBorder(side: BorderSide(color: AppConstants.neonBlue.withOpacity(0.5))),
    );
  }
}