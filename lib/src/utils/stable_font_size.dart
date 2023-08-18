import 'package:flutter/material.dart';

class StableFontSize extends StatelessWidget {
  final Widget child;
  final double factor;
  const StableFontSize({super.key, required this.child, this.factor = 500});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      child: child,
      data: MediaQuery.of(context).copyWith(
        textScaleFactor: MediaQuery.of(context).size.width / factor,
      ),
    );
  }
}
