import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Projects"),
          const SizedBox(height: 24),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: const [
              ProjectCard(
                title: "Foodtek App",
                description: "Foodtek App is a cross-platform restaurant application built with Flutter and Dart, offering a seamless food ordering experience with real-time delivery tracking powered by Google Maps API. Designed with separate flows for customers and drivers, it enables efficient order management, live updates, and smooth communication throughout the delivery process.The app features OTP-based login, cart and favorites management, and instant notifications, all wrapped in a modern, responsive UI. Built using Firebase Authentication and Bloc/Cubit architecture, it ensures secure access.",
                 imagePath: 'assets/images/projects/foodtek.png', githubUrl: 'https://github.com/SSeba2002/foodtek_app',
              ),
              ProjectCard(
                title: "My Pharmacy App",
                description: "My Pharmacy App is a cross-platform mobile application built with Flutter and Firebase, designed to improve patient care and health awareness. It helps users manage medications, track medical history, and access reliable drug information with ease.Featuring smart medicine search (manual or camera-based), custom pill reminders, and secure authentication, the app ensures a smooth and efficient experience across devices. It also supports pharmacy students by providing quick access to detailed medicine data.",
                 imagePath: 'assets/images/projects/myPharmacy.png', githubUrl: 'https://github.com/BaraaAJameha/My-Pharmacy-App',
                 
              ),
              ProjectCard(
                title: "Car Center Platform",
                description: "Car Center is a responsive online platform built with HTML, CSS, and JavaScript, designed to make browsing and purchasing cars simple and engaging. It features detailed car listings, smart search and filter options, and a shopping cart for managing selections effortlessly. The project focuses on delivering a clean UI, smooth interactivity, and a user-friendly shopping experience across all devices.",
                 imagePath: 'assets/images/projects/carCenter.png', githubUrl: 'https://github.com/BaraaAJameha/carCenter',
              ),

            ],
          ),
        ],
      ),
    );
  }
}
