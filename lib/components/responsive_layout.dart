import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget child;

  const ResponsiveLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width;

        if (constraints.maxWidth < 600) {
          // Mobile
          width = constraints.maxWidth * 0.8;
        } else if (constraints.maxWidth < 1200) {
          // Tablet
          width = constraints.maxWidth * 0.8;
        } else {
          // Desktop
          width = constraints.maxWidth > 1000 ? 1000 : constraints.maxWidth;
        }

        return SizedBox(
          width: width,
          child: child,
        );
      },
    );
  }
}
