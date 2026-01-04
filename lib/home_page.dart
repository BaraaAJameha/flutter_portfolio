import 'package:flutter/material.dart';
import 'core/controllers/scroll_controller.dart';
import 'widgets/navbar.dart';
import 'sections/hero_section.dart';
import 'sections/about_section.dart';
import 'sections/work_section.dart';
import 'sections/projects_section.dart';
import 'sections/skills_section.dart';
import 'sections/education_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final sections = ScrollSectionsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: sections.scrollController,
            child: Column(
              children: [
                Container(key: sections.heroKey, child: const HeroSection()),
                Container(key: sections.aboutKey, child: const AboutSection()),
                Container(key: sections.workKey, child: const WorkSection()),
                Container(key: sections.projectsKey, child: const ProjectsSection()),
                Container(key: sections.skillsKey, child: const SkillsSection()),
                Container(key: sections.educationKey, child: const EducationSection()),
              ],
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Navbar(controller: sections),
          ),
        ],
      ),
    );
  }
}
