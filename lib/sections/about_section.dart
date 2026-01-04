import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SectionTitle(title: "About Me"),
          SizedBox(height: 16),
          Text(
            "A skilled Full Stack Mobile App Developer passionate about turning ideas into beautiful, high-performing mobile apps. I specialize in cross-platform apps with clean code, modern UI, \nand smooth functionality.\nFrom e-commerce and booking apps to educational and social platforms, I create apps that not only work perfectly but also delight users.\nLet’s bring your app idea to life fast, professional, and exactly how you envision it!",
            style: TextStyle(fontSize: 16, height: 1.6),
          ),
        ],
      ),
    );
  }
}
