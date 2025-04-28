import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/section_title.dart';
import '../utils/constants.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24), // Reduced vertical padding
      color: AppConstants.darkBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Education'),
          const SizedBox(height: 20), // Reduced spacing

          // Compact Education Card
          Container(
            padding: const EdgeInsets.all(16), // Tighter padding
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[900],
              border: Border.all(
                color: Colors.grey[800]!,
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // University Header
                Row(
                  children: [
                    Icon(Icons.school, color: AppConstants.neonBlue),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Engineering in Computer Engineering',
                          style: TextStyle(
                            fontSize: 16, // Slightly smaller font
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Sethu Institute of Technology, Virudhunagar',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Details in compact row format
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDetailItem('Duration', '2021 – 2025', FontAwesomeIcons.calendar),
                    _buildDetailItem('GPA', '7.8/10', FontAwesomeIcons.award),
                    _buildDetailItem('Specialization', 'Mobile App Dev', FontAwesomeIcons.code),
                  ],
                ),

                const SizedBox(height: 16),

                // Courses
                Text(
                  'Relevant Courses:',
                  style: TextStyle(
                    color: AppConstants.neonGreen,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: [
                    _buildCourseChip('Flutter'),
                    _buildCourseChip('IoT'),
                    _buildCourseChip('PC Hardware'),
                  ],
                ),

                const SizedBox(height: 16),

                // Achievements
                Text(
                  'Key Achievements:',
                  style: TextStyle(
                    color: AppConstants.neonGreen,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildAchievement('Developed 5+ Flutter apps'),
                    _buildAchievement('Published IoT research paper'),
                    _buildAchievement('Hackathon winner (traffic solution)'),
                  ],
                ),
              ],
            ),
          ).animate().fadeIn().slideX(begin: 0.1),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String title, String value, IconData icon) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FaIcon(icon, size: 14, color: AppConstants.neonPink),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.grey[400], fontSize: 12)),
            Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }

  Widget _buildCourseChip(String text) {
    return Chip(
      label: Text(text),
      labelPadding: const EdgeInsets.symmetric(horizontal: 8),
      backgroundColor: Colors.grey[800],
      labelStyle: const TextStyle(fontSize: 12),
    );
  }

  Widget _buildAchievement(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.arrow_right, color: AppConstants.neonBlue, size: 18),
          const SizedBox(width: 8),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 13))),
        ],
      ),
    );
  }
}