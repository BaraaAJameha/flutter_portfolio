import 'package:flutter/material.dart';

class ScrollSectionsController {
  final ScrollController scrollController = ScrollController();

  final heroKey = GlobalKey();
  final aboutKey = GlobalKey();
  final workKey = GlobalKey();
  final projectsKey = GlobalKey();
  final skillsKey = GlobalKey();
  final educationKey = GlobalKey();

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }
}
