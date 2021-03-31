import 'package:flutter/material.dart';

class StableFontSize extends StatelessWidget {
  final Widget child;
  final double factor;

  const StableFontSize({Key? key, required this.child, this.factor = 500}) : super(key: key);

  @override
  Widget build(BuildContext context) => MediaQuery(
        child: child,
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: MediaQuery.of(context).size.width / factor,
        ),
      );
}
