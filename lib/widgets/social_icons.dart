import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Widget _icon({
    required String asset,
    required String url,
  }) {
    return InkWell(
      onTap: () => _launch(url),
      borderRadius: BorderRadius.circular(50),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          width: 28,
          height: 28,
          child: Image.asset(
            asset,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      alignment: WrapAlignment.center,
      children: [
        /// Email (Gmail compose)
        _icon(
          asset: "assets/icons/email.png",
          url:
              "https://mail.google.com/mail/?view=cm&fs=1&to=baraaajameha@gmail.com&su=Hello&body=Hi%20Baraa",
        ),

        /// GitHub
        _icon(
          asset: "assets/icons/github.png",
          url: "https://github.com/BaraaAJameha",
        ),

        /// LinkedIn
        _icon(
          asset: "assets/icons/linkedin.png",
          url: "https://www.linkedin.com/in/baraahabuajameha/",
        ),
      ],
    );
  }
}
