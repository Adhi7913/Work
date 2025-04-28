import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/constants.dart';
import '../widgets/skill_chip.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Reduced height significantly
      height: MediaQuery.of(context).size.height * 0.7, // 70% of screen height
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, AppConstants.darkBg],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Compact title section
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Hi there, This is',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  shadows: [
                    Shadow(color: AppConstants.neonBlue, blurRadius: 10), // new neon blue shadow
                  ],
                ),
              ).animate().fadeIn(delay: 100.ms).slideY(begin: -0.2),

              const SizedBox(height: 10),
              Text('Adhithian R',
                style: TextStyle(
                  fontSize: 45, // Reduced from 48
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: AppConstants.neonPink,
                      blurRadius: 8, // Smaller shadow
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8), // Reduced spacing
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Flutter Developer | PC hardware enthusiast',
                    textStyle: TextStyle(
                      fontSize: 18, // Smaller font
                      color: AppConstants.neonGreen,
                    ),
                    speed: const Duration(milliseconds: 50),
                  ),
                ],
                repeatForever: true,
                totalRepeatCount: 3,
              ),
            ],
          ).animate().fadeIn(duration: 500.ms).slideY(begin: -0.1),

          const SizedBox(height: 30), // Reduced from 40

          // Compact skills row
          Wrap(
            spacing: 8, // Tighter spacing
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: const [
              SkillChip(label: 'Flutter', icon: FontAwesomeIcons.mobile),
              SkillChip(label: 'Firebase', icon: FontAwesomeIcons.fire),
              SkillChip(label: 'Arduino', icon: FontAwesomeIcons.microchip),
            ],
          ).animate().fadeIn(delay: 300.ms),
        ],
      ),
    );
  }
}