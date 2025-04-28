import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../widgets/section_title.dart';
import '../utils/constants.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Professional Experience'),
          const SizedBox(height: 30),

          TimelineTile(
            alignment: TimelineAlign.start,
            isFirst: true,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: AppConstants.neonBlue,
            ),
            endChild: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: _buildExperienceCard(
                role: 'Freelance Flutter Developer',
                period: '2023 – Present',
                points: [
                  'Developed end-to-end client applications with Flutter & Firebase',
                  'Collaborated directly with stakeholders for requirements gathering',
                  'Delivered high-quality apps with intuitive UI/UX',
                ],
              ),
            ),
          ),

          TimelineTile(
            alignment: TimelineAlign.start,
            isLast: true,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: AppConstants.neonPink,
            ),
            endChild: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: _buildExperienceCard(
                role: 'IoT Project Developer',
                period: '2022 – 2023',
                points: [
                  'Developed RFID-based systems with Arduino',
                  'Implemented hardware-software integration',
                  'Created documentation and user manuals',
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Add this missing method
  Widget _buildExperienceCard({
    required String role,
    required String period,
    required List<String> points,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[900],
        border: Border.all(
          color: AppConstants.neonBlue.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(role,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          const SizedBox(height: 8),
          Text(period,
            style: TextStyle(
                color: AppConstants.neonGreen,
                fontStyle: FontStyle.italic
            ),
          ),
          const SizedBox(height: 12),
          ...points.map((point) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• ', style: TextStyle(color: AppConstants.neonBlue)),
                Expanded(child: Text(point)),
              ],
            ),
          )).toList(),
        ],
      ),
    );
  }
}