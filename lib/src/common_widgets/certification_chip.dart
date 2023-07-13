import 'package:flutter/material.dart';

class CertificationChip extends StatelessWidget {
  const CertificationChip({super.key, required this.certificationName, required this.fileName, required this.isMobile});

  final String certificationName;
  final String fileName;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: certificationName,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 2 : 4),
        child: Chip(
          label: SizedBox(
            width: isMobile ? 25 : 40,
            height: isMobile ? 25 : 40,
            child: Image.asset(
              'assets/images/certifications/$fileName',
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          side: BorderSide.none,
        ),
      ),
    );
  }
}
