import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    required this.desktop,
    this.tablet,
    this.mobileLarge,
    required this.mobile,
  });

  final Widget desktop;
  final Widget? tablet;
  final Widget? mobileLarge;
  final Widget mobile;

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700 &&
        MediaQuery.of(context).size.width > 500;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1500) {
      return desktop;
    } else if (_size.width <= 1500 && _size.width > 900 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 600 && _size.width < 900 && mobileLarge != null) {
      return mobileLarge!;
    } else if (_size.width < 600) {
      return mobile;
    } else {
      return Container();
    }
  }
}
