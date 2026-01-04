import 'package:flutter/material.dart';
import '../core/controllers/scroll_controller.dart';
import '../core/utils/responsive.dart';

class Navbar extends StatelessWidget {
  final ScrollSectionsController controller;

  const Navbar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF0A192F).withOpacity(0.95), // dark navy
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!isMobile)
            Row(
              children: [
                _navItem(Icons.home, () => controller.scrollTo(controller.heroKey)),
                _navItem(Icons.person, () => controller.scrollTo(controller.aboutKey)),
                _navItem(Icons.work, () => controller.scrollTo(controller.workKey)),
                _navItem(Icons.apps, () => controller.scrollTo(controller.projectsKey)),
                _navItem(Icons.code, () => controller.scrollTo(controller.skillsKey)),
                _navItem(Icons.school, () => controller.scrollTo(controller.educationKey)),
              ],
            ),
        ],
      ),
    );
  }

  // NavItem معدّل مع Hover + Glow
  Widget _navItem(IconData icon, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: _HoverIcon(icon: icon, onTap: onTap),
    );
  }
}

class _HoverIcon extends StatefulWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _HoverIcon({required this.icon, required this.onTap, super.key});

  @override
  State<_HoverIcon> createState() => _HoverIconState();
}

class _HoverIconState extends State<_HoverIcon> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isHovering
              ? [
                  BoxShadow(
                    color: const Color(0xFF00E5FF).withOpacity(0.5), // electric cyan glow
                    blurRadius: 12,
                    spreadRadius: 1,
                  ),
                ]
              : [],
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: widget.onTap,
          child: Icon(
            widget.icon,
            size: 28,
            color: _isHovering ? const Color(0xFF00E5FF) : Colors.white70,
          ),
        ),
      ),
    );
  }
}
