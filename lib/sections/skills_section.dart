import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/animated_section.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      "Flutter",
      "Dart",
      "Firebase",
      "REST APIs",
      "Provider",
       "BLoC", 
       "GetX", 
       "Google Map", 
       "Android (Java)", 
       "MySQL", 
      "Git & GitHub",
      "Responsive UI",
      "Clean Architecture",
      "JavaScript", 
      "Java", 
      "C++", 
      "HTML", 
      "CSS",
    ];

    return AnimatedSection(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: "Skills"),
            const SizedBox(height: 24),

            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: skills
                  .map(
                    (skill) => Chip(
                      label: Text(skill),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
