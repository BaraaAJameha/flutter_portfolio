import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/animated_section.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSection(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SectionTitle(title: "Education"),
            SizedBox(height: 24),

            Text(
              "Bachelor of Software Engineering",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text("Bethlehem University-2023"),
            SizedBox(height: 12),
          
          ],
        ),
      ),
    );
  }
}
