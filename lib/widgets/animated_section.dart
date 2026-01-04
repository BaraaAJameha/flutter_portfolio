import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedSection extends StatelessWidget {
  final Widget child;

  const AnimatedSection({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return child
        .animate()
        .fade(duration: 600.ms)
        .slideY(begin: 0.2);
  }
}
