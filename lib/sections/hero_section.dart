import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import '../core/utils/responsive.dart';
import '../widgets/social_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: isMobile ? 40 : 80,
      ),
      child: Flex(
        direction: isMobile ? Axis.vertical : Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// ===== LEFT TEXT =====
          Column(
            crossAxisAlignment: isMobile
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi, I'm Bara'ah 👋",
                style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
              ).animate().fade(duration: 600.ms).slideX(begin: -0.2),

              const SizedBox(height: 12),

              const Text(
                "Creative Flutter Developer | Fast & Scalable Apps ",
                style: TextStyle(fontSize: 20),
              ).animate(delay: 200.ms).fade().slideX(begin: -0.2),

              const SizedBox(height: 24),

              ElevatedButton.icon(
                onPressed: () async {
                  final Uri url = Uri.parse(
                    "https://drive.google.com/file/d/1upgwjJCGG6N1zT-TFDbho5FBduhmnneu/view?usp=sharing",
                  );

                  if (!await launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw 'Could not launch $url';
                  }
                },
                icon: const Icon(Icons.download),
                label: const Text("Download CV"),
              ).animate(delay: 400.ms).fade().slideY(begin: 0.3),
            ],
          ),

          const SizedBox(height: 40),

          /// ===== RIGHT IMAGE + SOCIAL =====
          Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  CircleAvatar(
                    radius: isMobile ? 90 : 120,
                    backgroundImage: const AssetImage(
                      "assets/images/profile.jpeg",
                    ),
                  ).animate().fade(duration: 800.ms).scale(),

                
                ],
              ),

              const SizedBox(height: 12),

              /// SOCIAL ICONS
              const SocialIcons()
                  .animate()
                  .fade(delay: 500.ms)
                  .slideY(begin: 0.2),
            ],
          ),
        ],
      ),
    );
  }
}
