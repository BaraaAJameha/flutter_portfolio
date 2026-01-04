import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/animated_section.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSection(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: "Experience"),
            const SizedBox(height: 24),

            _workItem(
              title: "Mobile Development Intern",
              company: "AppTrainers,Amman",
              period: "Dec 2024 – Jun 2025",
              description:
                  "• Developed and optimized cross-platform mobile applications using Flutter and Dart, focusing on performance and clean UI/UX. • Integrated RESTful APIs and Firebase services (Auth, Firestore, Messaging) to enable real-time features and secure data handling. • Applied state management solutions like Provider to maintain scalable and maintainable app architecture.",
            ),

            _workItem(
              title: "Frontend Development Intern",
              company: "Transcend,Bethlehem",
              period: "Jul 2022 – Sep 2022",
              description:
                  "• Developed responsive and interactive web applications through JavaScript, PHP, and HTML/CSS, ensuring seamless user experiences across all devices. • Streamlined data processes by leveraging SQL (MySQL) and NoSQL (MongoDB), resulting in faster and more scalable backend operations. • Optimized data flow and storage by integrating SQL/NoSQL databases with front-end frameworks, reducing latency and improving reliability ",
            ),
          ],
        ),
      ),
    );
  }
Widget _workItem({
  required String title,
  required String company,
  required String period,
  required String description,
}) {
  bool isExpanded = false; // حالة التوسيع لكل عنصر

  return StatefulBuilder(
    builder: (context, setState) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(company),
            const SizedBox(height: 4),
            Text(period, style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 8),

            // الوصف مع Read More
            Text(
              description,
              maxLines: isExpanded ? null : 1, 
              overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            ),

            // زر Read More / Read Less
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? "Read Less" : "Read More",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
}